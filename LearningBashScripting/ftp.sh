#!/bin/bash
pftp -n <<- file
    open mirrors.xmission.com
    user anonymous nothinghere
    ascii
    cd gutenberg
    get GUTINDEX.2018 
file
# standalone script