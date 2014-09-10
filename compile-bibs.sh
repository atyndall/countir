#!/bin/bash
# A lot of tools by default won't compile the buN.aux bibs, this does that.
for fn in `ls *.aux`; do
	bibtex $fn
done