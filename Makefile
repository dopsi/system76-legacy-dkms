obj-m := system76_legacy.o
KERNEL_DIR = /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C "$(KERNEL_DIR)" M="$(PWD)" modules

clean:
	$(MAKE) -C "$(KERNEL_DIR)" M="$(PWD)" clean

.PHONY: install

install: all
	-sudo rmmod system76_legacy
	sudo insmod ./system76_legacy.ko
