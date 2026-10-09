# BareMetal Top-Level Makefile

.PHONY: all clean sdk test dtb help modbus-demo modbus-demo-build

all: sdk litmus

modbus-demo-build:
	$(MAKE) -C sdk -f sdk.mk modbus-demo-build TARGET=$(or $(TARGET),qemu)

modbus-demo:
	$(MAKE) -C sdk -f sdk.mk modbus-demo TARGET=$(or $(TARGET),qemu) ORIGINAL_PWD=$(CURDIR)

help:
	$(MAKE) -C sdk -f sdk.mk help

sdk:
	@echo "Building SDK..."
	$(MAKE) -C sdk -f sdk.mk

clean:
	@echo "Cleaning SDK..."
	$(MAKE) -C sdk -f sdk.mk clean

litmus:
	@echo "Generating Litmus Tests..."
	$(MAKE) -C sdk -f sdk.mk litmus

test:
	$(MAKE) -C sdk -f sdk.mk test TARGET=$(TARGET) ORIGINAL_PWD=$(CURDIR)

dtb:
	$(MAKE) -C sdk -f sdk.mk dtb TARGET=$(TARGET) ORIGINAL_PWD=$(CURDIR)
