# Saving an image file
### Uncomment /etc/fstab
At the command line (in QEMU), run the following:

```
/opt/uncomment-fstab
exit
```

If you get a kernel panic, it's safe to ignore.

### Burning the filesystem image
1. Plug in our media
    * If using a card, just plug it in
    * If using a card *image*, run `hdiutil mount images/<name>.img`
2. Run `diskutil list`, look for the card and the filesystem partition
3. Unmount (not eject) the disk:

```
diskutil unmountDisk diskN
```

4. Burn the filesystem image:

```
dd if=images/<name>-fs.img of=/dev/rdiskNsN bs=1m
```

5. If desired, save the new card image:

```
dd if=/dev/rdiskN of=images/<new name>.img bs=1m
```

6. If this was for a card image, burn the new image to a card:

```	
dd if=/dev/rdiskN of=/dev/rdiskN bs=1m
```

### Eject the disk
Be sure to eject either the SD card or card image:

```
diskutil eject diskN
```

&nbsp;

<p align="center">
	<a href="2-using-qemu.md">&larr; Using QEMU</a> &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; 
	<a href="readme.md">Main page</a> &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; 
	<a href="4-mounting.md">Mounting images &rarr;</a>
</p>