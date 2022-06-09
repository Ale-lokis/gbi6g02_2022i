#!/bin/bash
grep -n "partial cds" ../data_INFg.txt | wc -l >>cds_partial.txt

grep -n "linear mRNA" ../data_INFg.txt | wc -l >>linear_rna.txt




