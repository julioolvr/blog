#!/bin/bash

rm -rf build;
middleman build;
cd ..;
rm -rf julioolvr.github.com/*;
cp -r blog/build/* julioolvr.github.com/;
cd julioolvr.github.com;
git add . -A;
git ci -m "Blog update";
git push origin master;
