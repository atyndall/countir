#!/bin/bash
# Requires TeXCount
cd thesis
texcount -merge -sub=chapter thesis.tex
cd ..