# Retrieving an image file
There are two types of image files we'll be using: **cards** and **filesystems**:
* A **card** image is what is pulled straight from the SD card, and contains many partitions.
* A **filesystem** image lives in a **card** and contains only the files used by linux.

### Getting a **card** image
1. Mount the SD card
2. Open Disk Utility (OS X)
3. Right click on the entire card (mine is called "Apple SDXC Reader Media"
4. Click 'Image from "untitled"'
5. Set the format to "DVD/CD master"
6. Navigate to the images folder
7. Save as .img
8. Manually remove .cdr extension

Note that this could also be done via `dd`, but Disk Utility doesn't grab empty space
(ex. it can make a 8gb img from a 16gb card if 8gb are empty)

### Getting a **filesystem** image
1. Mount our media
    * If using a card, just plug it in
    * If using a card *image*, run `hdiutil mount images/<name>.img`
2. Run `diskutil list`
3. The disk we're looking for should be 'internal, physical' if using a card or 'disk image' if using an image
   It should have 5 partitions:
    1. Name is blank, Type is FDisk_partition_scheme
    2. Name is RECOVERY, Type is Windows_FAT_16
    3. Name is blank, Type is Linux
    4. Name is boot, Type is Windows_FAT_32
    5. Name is blank, Type is Linux, *Size is the largest out of all the partitions*
       This is the filesystem partition
4. Extract as .img:

```
dd if=/dev/rdiskNsN of=images/<name>-fs.img bs=1m
```

&nbsp;

<p align="center">
	<a href="readme.md">Main page</a> &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; 
	<a href="2-using-qemu.md">Using QEMU &rarr;</a>
</p>