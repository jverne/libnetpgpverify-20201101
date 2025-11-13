#Specify the name of library.
LIB = pgpverify

NOMAN = 1 # Describe to suppress creating man document

#Specify the source files.
SRCS= b64.c bignum.c bufgap.c digest.c
SRCS+= libverify.c misc.c
SRCS+= pgpsum.c rsa.c
SRCS+= bzlib.c zlib.c
SRCS+= sha1.c sha2.c md5c.c rmd160.c

#CFLAGS+=-v no verbosity
#temporary for compiling with debug info
#CFLAGS+=-g
CFLAGS+=-w

CFLAGS+=-I.

#LDADD+= -lpthread 
LIB_SHARED=no

#SHLIB_MAJOR=0 # Major version of the library to create. Required to create a shared library
#SHLIB_MINOR=0 # Minor version of the library to create

FIXEDLINK=

# Adjust the tooling to use the default NetBSD utility names.
# See: /proj/lpux/6.0/objects/comlib/i386/e.034/environment/tool/mk_netbsd/bsd.README
USETOOLS = yes

.include <bsd.own.mk>
.include <bsd.lib.mk>

dumpinfo:
	@echo SRCS=${SRCS}
	@echo INCS=${INCS}
	@echo ${CC} ${CFLAGS}
	@echo ${LD} ${LDFLAGS} ${LDADD}
	@echo -e "\n"
	@echo MAKEOBJDIR=${MAKEOBJDIR}
	@echo MAKEOBJDIRPREFIX=${MAKEOBJDIRPREFIX}
	@echo PRINTOBJDIR=${PRINTOBJDIR}
	@echo .PATH=${.PATH}
	@echo .CURDIR=${.CURDIR}
	@echo .OBJDIR=${.OBJDIR}
	@echo TOOLDIR=${TOOLDIR}
	@echo _TOOL_PREFIX=${_TOOL_PREFIX}
	@echo TSORT=${TSORT}

