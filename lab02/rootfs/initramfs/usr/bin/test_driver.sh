#!/bin/sh

echo '=== LAB-02: Device Driver Test ==='

# Bước 1: Load module nếu module chưa được rcS load
echo '[1] Loading lab2_driver...'

if grep -q '^lab2_driver ' /proc/modules; then
    echo '  lab2_driver already loaded'
else
    if ! insmod /lib/modules/5.15.0/lab2_driver.ko; then
        echo 'ERROR: insmod failed!'
        exit 1
    fi
fi

# Bước 2: Xác nhận module đã load
echo '[2] Loaded modules:'
lsmod | grep lab2_driver

# Bước 3: Tạo device node nếu chưa có
echo '[3] Creating device node...'
[ -c /dev/lab2 ] || mknod /dev/lab2 c 240 0
chmod 666 /dev/lab2
ls -la /dev/lab2

# Bước 4: Test WRITE
echo '[4] Writing to device...'
echo 'Hello from userspace, LAB-02!' > /dev/lab2

# Bước 5: Test READ
echo '[5] Reading from device...'
DATA=$(cat /dev/lab2)
echo "  Read back: [$DATA]"

# Bước 6: Test nhiều lần write/read
echo '[6] Multiple write/read test...'
for i in 1 2 3; do
    echo "Message_$i" > /dev/lab2
    cat /dev/lab2
done

# Bước 7: Xem kernel log
echo '[7] Kernel messages (dmesg):'
dmesg | grep lab2 | tail -10

echo '=== Test PASSED ==='
