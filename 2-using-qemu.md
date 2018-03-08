# First boot
There are a couple of steps that must be taken to prepare an image for use with QEMU.

### First first boot
If this is your very first time using an image, run `qemu-bash.sh` with your image file.

At the command line (in QEMU), run the following:

```
# Comment out /etc/ld.so.conf
sed -i -e 's/^/#/' /etc/ld.so.conf

# Comment out /etc/fstab
printf "#!/bin/sh\nsed '/\//^\([^#]\)/#\1/' /etc/fstab -i" > /opt/comment-fstab
printf "#!/bin/sh\nsed '/\//s/^#\+//' /etc/fstab -i" > /opt/uncomment-fstab

chmod 777 /opt/comment-fstab /opt/uncomment-fstab
```

Then proceed.

*Note that commenting out /etc/ld.so.conf may no longer be necessary (will test eventually)*

### Other first boots
If this is your first time using an image after pulling it from a card, run `qemu.sh` with your image file.

At the command line (in QEMU), run the following:

```
/opt/comment-fstab
shutdown -r now
```

Note that you may need to manually run `qemu.sh` again with the same image file.

QEMU should now be able to boot to the desktop.

&nbsp;

<p align="center">
	<a href="1-retrieving-images.md">&larr; Retrieving images</a> &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; 
	<a href="readme.md">Main page</a> &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; 
	<a href="3-saving-images.md">Saving images &rarr;</a>
</p>