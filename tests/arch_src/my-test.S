# Το arch_gen.sh θα προσθέσει αυτόματα το run_test_my_test: από πάνω, 
# οπότε γράφεις κατευθείαν τον κώδικα:

    # 1. Κάνε την πράξη
    li x10, 10
    li x11, 20
    add x12, x10, x11  # x12 πρέπει να γίνει 30

    # 2. Αποθήκευσε το αποτέλεσμα στο ΣΩΣΤΟ label
    la x13, begin_signature_my_test
    sw x12, 0(x13)
    
    ret

# 3. Ορίζουμε τα labels που ψάχνει το arch_registry.c
.section .data
.align 4

.global begin_signature_my_test
begin_signature_my_test:
    .word 0x00000000

.global end_signature_my_test
end_signature_my_test:
    .word 0x00000000