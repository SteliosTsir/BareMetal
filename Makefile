# BareMetal Top-Level Makefile

.PHONY: all clean sdk test dtb help litmus

all: sdk litmus

help:
	$(MAKE) -C sdk -f sdk.mk help

litmus:
	@echo "Generating Litmus Tests..."
	$(MAKE) -C sdk -f sdk.mk litmus

sdk:
	@echo "Building SDK..."
	$(MAKE) -C sdk -f sdk.mk

clean:
	@echo "Cleaning SDK..."
	$(MAKE) -C sdk -f sdk.mk clean

test:
	$(MAKE) -C sdk -f sdk.mk test TARGET=$(TARGET) ORIGINAL_PWD=$(CURDIR)

dtb:
	$(MAKE) -C sdk -f sdk.mk dtb TARGET=$(TARGET) ORIGINAL_PWD=$(CURDIR)