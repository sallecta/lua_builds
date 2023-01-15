fn_stoponerror ()
{
	# Usage:
	# fn_stoponerror $BASH_SOURCE $LINENO $?
	from=$1
	line=$2
	error=$3
	if [ $error -ne 0 ]; then
		printf "\n$from: line $line: error: $error\n"
		exit $error
	fi
}

path0="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
dirobj="ignore/build/obj"
direxe="ignore/build/exe"
dirsrc="lua_src/lua-5.4.4/src"
dirtest="test"
gccparams="-std=gnu99 -O2 -Wall -Wextra -DLUA_COMPAT_5_3 -DLUA_USE_LINUX"


echo "Creating obj dir..."
mkdir -p "$path0/$dirobj"
fn_stoponerror $BASH_SOURCE $LINENO $?


echo "Creating executable dir..."
mkdir -p "$path0/$direxe"
fn_stoponerror $BASH_SOURCE $LINENO $?


cd "$path0/$dirsrc"
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lapi"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lcode"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lctype"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ldebug"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ldo"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ldump"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lfunc"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lgc"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="llex"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lmem"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lobject"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lopcodes"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lparser"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lstate"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lstring"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ltable"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ltm"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lundump"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lvm"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lzio"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lauxlib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lbaselib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lcorolib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ldblib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="liolib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lmathlib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="loadlib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="loslib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lstrlib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="ltablib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lutf8lib"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="linit"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="liblua"
echo "Archiving objects to static library $target..."
cd "$path0/$dirobj"
fn_stoponerror $BASH_SOURCE $LINENO $?
#"ar: u' modifier ignored since D' is the default (see `U')"
#
ar rc "$target".a lapi.o lcode.o lctype.o ldebug.o ldo.o ldump.o lfunc.o lgc.o llex.o lmem.o lobject.o lopcodes.o lparser.o lstate.o lstring.o ltable.o ltm.o lundump.o lvm.o lzio.o lauxlib.o lbaselib.o lcorolib.o ldblib.o liolib.o lmathlib.o loadlib.o loslib.o lstrlib.o ltablib.o lutf8lib.o linit.o
fn_stoponerror $BASH_SOURCE $LINENO $?
#
echo "Indexing static library $target..."
ranlib liblua.a
fn_stoponerror $BASH_SOURCE $LINENO $?


cd "$path0/$dirsrc"
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lua"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


target="luac"
echo "Building object $target..."
gcc $gccparams -c -o $path0/$dirobj/"$target".o "$target".c
fn_stoponerror $BASH_SOURCE $LINENO $?


cd "$path0/$dirobj"
fn_stoponerror $BASH_SOURCE $LINENO $?


target="lua"
echo "Linking $target executable..."
gcc -std=gnu99 -o "$path0/$direxe/$target" lua.o liblua.a -lm -Wl,-E -ldl
fn_stoponerror $BASH_SOURCE $LINENO $?
echo "Stripping $target executable..."
strip "$path0/$direxe/$target"
fn_stoponerror $BASH_SOURCE $LINENO $?
#
echo "Testing $target executable..."
"$path0/$direxe/$target" "$path0/$dirtest/hello.lua"
fn_stoponerror $BASH_SOURCE $LINENO $?


target="luac"
echo "Linking luac executable..."
gcc -std=gnu99 -o "$path0/$direxe/$target" luac.o liblua.a -lm -Wl,-E -ldl
fn_stoponerror $BASH_SOURCE $LINENO $?
echo "Stripping $target executable..."
strip "$path0/$direxe/$target"
fn_stoponerror $BASH_SOURCE $LINENO $?


cd "$path0"
fn_stoponerror $BASH_SOURCE $LINENO $?
