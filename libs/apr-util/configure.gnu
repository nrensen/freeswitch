#! /bin/sh
srcpath=$(dirname $0 2>/dev/null )  || srcpath="." 
for arg; do
	if test "$arg" != "--with-ldap"; then
		args="$args '$arg'"
	fi
done
eval $srcpath/configure $args --with-apr=../apr --disable-shared --with-pic --without-sqlite2 --without-sqlite3 --with-expat=builtin
