set -o errexit
set -o nounset

prefix=$1

mkdir $prefix
mv exe*prof $prefix
mv $prefix.*{uctl,z} $prefix
cp $prefix*exe $prefix

pushd $prefix
vtunify $prefix
popd
