# libnetpgpverify-20201101
libnetpgpverify fork for select embedded devices taken from NetBSD pksrc.

## What?
Heavily refactored libnetpgpverify for embedded NetBSD IA-32.

More or less forked NetBSD 9 pksrc but with everything not related to IA-32 NetBSD removed or commented out. All pkgsrc and other build support (which does not work on the host machine) was removed.

## Why?
A need for a simple standalone IETF RFC 4880 signature verifier prompted this. It wasn't clear how out of date [NetPGP](https://netpgp.com/) might be, and there was a problem with the "portable" build needing OpenSSL installed to the build device. We are building on a cross-compiler and plan to build on a "Canadian Cross" system eventually. This means a full autoconf build or a simple self-contained, good-enough solution. We chose the latter.

## How to build
Building this library for the target platform requires proprietary cross-compilation toolchains run on a specific host machines, along with some other proprietary tools. This is not included here.
