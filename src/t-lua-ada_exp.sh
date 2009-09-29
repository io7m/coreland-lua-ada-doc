#!/bin/sh

cat <<EOF
(subsection
  (title "Standard Use Cases")
  (para-verbatim example "
EOF

echo "# compile Ada source using the library"
echo "$ lua-ada-conf compile cflags incdir"
lua-ada-conf compile incdir cflags
echo
echo

echo "# link object files against the static library"
echo "$ lua-ada-conf compile ldflags slibdir"
lua-ada-conf compile slibdir ldflags
echo
echo

echo "# link object files against the dynamic library"
echo "$ lua-ada-conf compile ldflags dlibdir"
lua-ada-conf compile dlibdir ldflags
echo
echo

cat <<EOF
"))

(subsection
  (title "Other Use Cases")
  (para-verbatim example "
EOF

echo "$ lua-ada-conf version"
lua-ada-conf version
echo
echo

echo "$ lua-ada-conf incdir"
lua-ada-conf incdir
echo
echo

echo "$ lua-ada-conf dlibdir"
lua-ada-conf dlibdir
echo
echo

echo "$ lua-ada-conf slibdir"
lua-ada-conf slibdir
echo
echo

echo "$ lua-ada-conf cflags"
lua-ada-conf cflags
echo
echo

echo "$ lua-ada-conf ldflags"
lua-ada-conf ldflags
echo
echo

echo "$ lua-ada-conf compile incdir"
lua-ada-conf compile incdir
echo
echo

echo "$ lua-ada-conf compile dlibdir"
lua-ada-conf compile dlibdir
echo
echo

echo "$ lua-ada-conf compile slibdir"
lua-ada-conf compile slibdir
echo
echo

cat <<EOF
"))
EOF

