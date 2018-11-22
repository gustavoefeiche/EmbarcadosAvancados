TARGET = hps_gpio

ALT_DEVICE_FAMILY ?= soc_cv_av

HWLIBS_ROOT = $(SOCEDS_HWLIB)

CFLAGS = -g -Wall -Werror -I$(HWLIBS_ROOT)/include -I$(HWLIBS_ROOT)/include/$(ALT_DEVICE_FAMILY) -D$(ALT_DEVICE_FAMILY)
LDFLAGS = -g -Wall -Werror

CROSS_COMPILE = $(GCC_Linaro)/arm-linux-gnueabihf-
CC = $(CROSS_COMPILE)gcc
LD = $(CROSS_COMPILE)gcc
ARCH = arm
IP = 192.168.50.136

.PHONY: build
build: $(TARGET)

$(TARGET): main.o
	$(LD) $(LDFLAGS)   $^ -o $@

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

.PHONY: clean
clean:
	rm -f $(TARGET) *.a *.o *~


kill:
	ssh root@$(IP) "killall hps_gpio; exit" 


kill_deploy:
	ssh root@$(IP) "killall hps_gpio; exit" 
	scp hps_gpio root@$(IP):

deploy:
	scp hps_gpio root@$(IP):


run:
	ssh root@192.168.50.136 ./hps_gpio

	