KVERSION := $(shell uname -r)

obj-m = link.o
link-objs:=link-driver.o

all:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
install:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) modules_install
clean:
	make -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
