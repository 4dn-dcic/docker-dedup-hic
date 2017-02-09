#!/bin/sh

## SOFTWARE: samtools
## VERSION: 1.2
wget https://github.com/samtools/samtools/releases/download/1.2/samtools-1.2.tar.bz2
tar -xjf samtools-1.2.tar.bz2
cd samtools-1.2
make
cd ..
ln -s samtools-1.2 samtools

## SOFTWARE: picard
## VERSION: 2.8.3
wget https://github.com/broadinstitute/picard/releases/download/2.8.3/picard.jar

