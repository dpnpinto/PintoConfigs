# I do this more often in my servers with Rocky Linux, but the situatio is the same with all distributions
## To see the partition, fisical and logical disks
lsblk 
## just to confirm that the logic volume is in sdx
pvs 
## after this for example if the logic partition is in sda2 lets get more space to sda
parted /dev/sda
Note: use p to se partitions and resizepart to resie it "resizepart 2 100%" (to get all space to part 2)
## The partition is done lets resise now the fisical volume the in this example is sda2
pvresize /dev/sda2
## Ok, now just look at the name of the logical volumes with
lvdisplay
### Now it is time to finaly resize the logical volume
lvresize --extents +100%FREE --resizefs  "The name of the logic volume"
Job done ;)

# Take a look at:

- lsblk - https://www.man7.org/linux/man-pages/man8/lsblk.8.html
- pvs - https://www.man7.org/linux/man-pages/man8/pvs.8.html 
- parted - https://man7.org/linux/man-pages/man8/parted.8.html
- pvresize - https://man7.org/linux/man-pages/man8/pvresize.8.html
- lvdisplay - https://man7.org/linux/man-pages/man8/lvdisplay.8.html
- lvresize - https://man7.org/linux/man-pages/man8/lvresize.8.html

 
