echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external frameworks/av system/core system/sepolicy system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/elephone/p9000/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
