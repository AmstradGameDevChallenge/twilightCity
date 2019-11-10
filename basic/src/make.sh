#!/bin/bash

IDSK=$CPCT_PATH/tools/iDSK-0.13/bin/iDSK
SOURCE=miCodigo.bas
TARGET=agc03rpg



#CREATE DSK
$IDSK ${TARGET}.dsk -n

#remove Comments
grep -v "^1 '" $SOURCE > ${TARGET}.bas

#CONVERT TO MSDOS

unix2dos $SOURCE

#ADD TO DSK
$IDSK ${TARGET}.dsk -i ${TARGET}.bas -t 0 
