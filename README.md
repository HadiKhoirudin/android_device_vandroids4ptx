Copyright 2014 - The CyanogenMod Project
===================================

Device configuration for Advan Vandroid S4PTX SPRD (vandroids4ptx)

		instruction how to build

I think you already set up build enviroment so I will skip this.
First go to your working dir/build/tools/device and open in gedit makerecoveries.sh
Find line 
		make -j16 recoveryzip
and replace it with
		make recoveryzip
beacause it wont eat your RAM and build will be faster


After you finshed repo sync go in your working dir/device/
and create folder /advan/vandroids4ptx and copy content of vandroids4ptx
that you downloaded from here.

For build recovery, run this command in terminal from your working dir 

		. build/envsetup.sh
		lunch cm_vandroids4ptx-userdebug && make recoveryimage

Your build will start and you will find your recovery.img in your working dir/out/target/product/vandroids4ptx

And for build rom, run this command in terminal from your working dir 

		. build/envsetup.sh && brunch vandroids4ptx

