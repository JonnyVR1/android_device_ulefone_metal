echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="packages/apps/Settings system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/ulefone/metal/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
