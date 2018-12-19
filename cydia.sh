#!/bin/bash
rm Packages
rm Packages.bz2
rm Packages.gz
dpkg-scanpackages debs /dev/null > Packages
tar zcvf Packages.gz Packages
bzip2 -k Packages Packages.bz2
