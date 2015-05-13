#!/bin/bash
# Requires TeXCount
cd thesis
texcount -html -v -merge -sub=chapter thesis.tex > ../wordcount.html
cd ..