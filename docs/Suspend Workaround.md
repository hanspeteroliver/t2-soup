
WIP - "I didn't have the time to keep it short"

# The problem
The suspend workaround [outlined in t2linux wiki](https://wiki.t2linux.org/guides/postinstall/#suspend-workaround) did not work out of the box on my 2018 MacBook Pro 15", possibly due to my uncommon setup of having rootfs on an external drive. Just removing problem-causing kernel modules did not get s2idle suspend to resume the state. 

# Understand the difference between 'deep' and 's2idle' sleep
As a primary desktop user never having the need to rely on a quick suspend functionality, I understood the wiki instructions so far that true S3 sleep has been broken and never achieved since macOS Sonoma, I was not aware that the workaround 'deep sleep' that is supposed to work is commonly understood as s2idle. 

To find out which suspend method systemctl is using, either check journals from suspend or output current target method with this command: 

```
❯ cat /sys/power/mem_sleep
[s2idle] deep
```

If this returns 'deep', the system will try to enter S3 suspend, which it will not wake back up from. 

To temporarily change the suspend method run:
```
❯ echo s2idle | sudo tee /sys/power/mem_sleep
```
Your shell should return 's2idle' if the command ran successfully. 

From this point you can test if suspend2idle already works with the vanilla workaround, which for me it did not. 

To set the suspend method to s2idle permanently, the easiest way is to add it to your kernel parameters: 
```
default_mem_sleep=s2idle
```

As this did not get resuming back from sleep state to work for me, I dug deeper. 

# Kernel parameters for getting s2idle to work
Apart from the already explained mmio params, there was one important parameter to set to prevent the T2-chip from messing up resuming from suspend state. 

(to-be-continued)

