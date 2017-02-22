echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/av packages/apps/Settings system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/ulefone/metal/patches/$dir/*.patch
	echo " "
done

cd $rootdirectory
cd packages/apps/SetupWizard
echo "Applying packages/apps/SetupWizard patches..."
git reset 3593f035fcb00ff88d422e6c7056100ac7a3deb3 --hard
echo " "

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
