#!/bin/bash
SRC_DIR=$1
OUT_DIR=$2

rm -f "$OUT_DIR"/*.S
rm -f "$OUT_DIR"/*.c

REGISTRY_FILE="$OUT_DIR/arch_registry.c"

echo "[ARCH_GEN] Generating Auto-Registry & Menu Entries..."

# 1. Header του Registry
cat <<EOF > "$REGISTRY_FILE"
#include <stdint.h>
#include <stddef.h>
#include <platform/utils/utils.h>
#include "../../testsuite/include/arch_tests.h"
#include "../../testsuite/include/test_framework.h"

EOF

declare -a TEST_NAMES

for f in "$SRC_DIR"/*.S; do
    [ ! -f "$f" ] && continue
    
    BASE_NO_EXT=$(basename "$f" .S)
    TEST_NAME=$(echo "$BASE_NO_EXT" | tr '-' '_')
    TEST_NAMES+=("$TEST_NAME")
    OUT_S="$OUT_DIR/$(basename "$f")"

    # --- Παραγωγή Assembly (.S) ---
    echo ".section .text" > "$OUT_S"
    echo ".align 4" >> "$OUT_S"
    echo ".global run_test_${TEST_NAME}" >> "$OUT_S"
    echo "run_test_${TEST_NAME}:" >> "$OUT_S"
    
    sed -e "s/RVMODEL_BOOT/run_test_${TEST_NAME}_internal:/g" \
        -e "s/RVMODEL_DATA_BEGIN/.section .data\n.align 4\n.global begin_signature_${TEST_NAME}\nbegin_signature_${TEST_NAME}:\nRVMODEL_DATA_BEGIN/g" \
        -e "s/RVMODEL_DATA_END/.global end_signature_${TEST_NAME}\nend_signature_${TEST_NAME}:\nRVMODEL_DATA_END\n.section .text/g" \
        "$f" >> "$OUT_S"

    # --- Παραγωγή του Wrapper και Registration στο Μενού ---
    cat <<EOF >> "$REGISTRY_FILE"
extern void run_test_${TEST_NAME}(void);
extern uint32_t begin_signature_${TEST_NAME};
extern uint32_t end_signature_${TEST_NAME};

static int verify_${TEST_NAME}(void) {
    INF("Running: ${TEST_NAME}\n\r");
    run_test_${TEST_NAME}();
    if (&begin_signature_${TEST_NAME} == &end_signature_${TEST_NAME}) {
        ERR("[FAIL] Signature empty!\n\r");
        return 1;
    }
    INF("  [PASS] Signature val: %x\n\r", begin_signature_${TEST_NAME});
    return 0;
}

REGISTER_ARCH_TEST("${TEST_NAME}", verify_${TEST_NAME});

EOF
done

# 2. Γράφουμε τον πίνακα all_arch_tests για να μην χτυπάει ο Linker
echo "const arch_test_t all_arch_tests[] = {" >> "$REGISTRY_FILE"

for TEST_NAME in "${TEST_NAMES[@]}"; do
    echo "    {" >> "$REGISTRY_FILE"
    echo "        .name = \"$TEST_NAME\"," >> "$REGISTRY_FILE"
    echo "        .run_func = run_test_${TEST_NAME}," >> "$REGISTRY_FILE"
    echo "        .begin_sig = &begin_signature_${TEST_NAME}," >> "$REGISTRY_FILE"
    echo "        .end_sig = &end_signature_${TEST_NAME}," >> "$REGISTRY_FILE"
    echo "        .expected_sig = NULL," >> "$REGISTRY_FILE"
    echo "        .expected_size = 0" >> "$REGISTRY_FILE"
    echo "    }," >> "$REGISTRY_FILE"
done

echo "};" >> "$REGISTRY_FILE"
echo "" >> "$REGISTRY_FILE"
echo "const int num_arch_tests = sizeof(all_arch_tests) / sizeof(arch_test_t);" >> "$REGISTRY_FILE"

echo "[ARCH_GEN] Done! Generated $(${#TEST_NAMES[@]}) tests in arch_registry.c"