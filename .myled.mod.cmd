savedcmd_myled.mod := printf '%s\n'   myled_driver.o led_hw.o | awk '!x[$$0]++ { print("./"$$0) }' > myled.mod
