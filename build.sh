
set -e

if [ "$1" = HEAD ]
then
  true
else
  git fetch
  if [ -z "$1" ]
  then
    ref=$(git tag | tail -n 1)
  else
    ref=$1
  fi
  git checkout $ref
fi
VER=$(git describe --tag | sed -e 's/^v//')

msgfmt deb/usr/share/locale/hu/LC_MESSAGES/gwget.po -o deb/usr/share/locale/hu/LC_MESSAGES/gwget.mo

sed -i deb/DEBIAN/control -e "s/^Version:.*/Version: $VER/"
mkdeb

# restore control file
sed -i deb/DEBIAN/control -e "s/^Version:.*/Version: /"
sed -i deb/DEBIAN/control -e "s/^Installed-Size:.*/Installed-Size: /"
