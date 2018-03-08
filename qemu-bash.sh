sudo /usr/local/bin/qemu-system-arm \
	-kernel ./kernel-qemu-4.4.34-jessie \
	-cpu arm1176 -m 256 \
	-M versatilepb \
	-no-reboot \
	-serial stdio \
	-append "root=/dev/sda panic=1 rootfstype=ext4 rw init=/bin/bash" \
	-drive "file=$1,index=0,media=disk,format=raw" \
	-net nic -net user