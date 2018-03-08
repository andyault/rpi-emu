# Installing QEMU (on OS X)
1. Install QEMU:

	sudo brew install qemu

2. Download QEMU kernel for Debian Jessie:

	curl -OL https://github.com/dhruvvyas90/qemu-rpi-kernel/raw/master/kernel-qemu-4.4.34-jessie

3. Optionally: Download a raspbian image:

	curl -OL http://downloads.raspberrypi.org/raspbian/images/raspbian-2015-11-24/2015-11-21-raspbian-jessie.zip
	unzip 2015-11-21-raspbian-jessie.zip -d images
	rm 2015-11-21-raspbian-jessie.zip

# Steps
Once QEMU has been installed, you may now do the following:

1. [Retrieving image files](1-retrieving-images.md)
2. [Using QEMU](2-using-qemu.md)
3. [Saving image files](3-saving-images.md)
4. And, optionally: [Mounting images](4-mounting-images.md)

# Credits
Much of this guide was developed with help from [hfreire](https://gist.github.com/hfreire)'s gist (found [here](https://gist.github.com/hfreire/5846b7aa4ac9209699ba))