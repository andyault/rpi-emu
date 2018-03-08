# Mounting a filesystem image
Optionally, filesystem images can be mounted for browsing via finder. To do this:

1. Install [ext4fuse](https://github.com/gerard/ext4fuse):

```
brew cask install osxfuse
brew install ext4fuse
```

2. Mount the disk:

```
hdiutil mount images/<name>.img
ext4fuse /dev/diskNsN <name> -o allow_other
```

3. When finished, unmount the disk:

```
diskutil unmountDisk <name>
diskutil eject <name>

diskutil unmountDisk diskN
diskutil eject diskN
```

&nbsp;

<p align="center">
	<a href="3-saving-images.md">&larr; Saving images</a> &nbsp; &nbsp; &nbsp; | &nbsp; &nbsp; &nbsp; 
	<a href="readme.md">Main page</a>
</p>