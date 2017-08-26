echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic external frameworks/av system/core system/sepolicy system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Reverting $dir patches..."
	git checkout -- .
	git clean -fd
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
