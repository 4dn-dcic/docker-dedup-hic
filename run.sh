#!/bin/sh

input_bam=$1
prefix=$2

# sort by position
samtools sort -o $prefix.sorted.bam -T $prefix.tmp.bam $input_bam
samtools index $prefix.sorted.bam

# mark duplicates
java -jar /usr/local/bin/picard.jar MarkDuplicates INPUT=$prefix.sorted.bam OUTPUT=$prefix.sorted.dedup.bam METRICS_FILE=$prefix.metrics.txt

# sort by readID
samtools sort -o $prefix.dedup.bam -T $prefix.tmp2.bam $prefix.sorted.dedup.bam

# add flag 'd'(0x400) to a chimeric part of a duplicate read that was not flagged. (TBA)


