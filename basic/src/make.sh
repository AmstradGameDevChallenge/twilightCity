#!/bin/bash

IDSK=$CPCT_PATH/tools/iDSK-0.13/bin/iDSK
SOURCE=miCodigo.bas
TARGET=miCodigo.dsk


#CREATE DSK
$IDSK $TARGET -n

#CONVERT TO MSDOS

unix2dos $SOURCE

#ADD TO DSK
$IDSK $TARGET -i $SOURCE -t 0 
