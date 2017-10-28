#! /bin/bash
cd /d/Hadoop/repo2/pic
while true
do
fc="$(ls | wc -l)"
if [ $fc -gt 0 ];
then
FILES=/d/Hadoop/repo2/pic/*
for f in $FILES
do
/MINGW64/bin/git add $f
/MINGW64/bin/git commit -m "$(date +%H-%M-%S)"
/MINGW64/bin/git remote add origin git@github.com:leo4016/bb104.git
/MINGW64/bin/git push -u origin master
/MINGW64/bin/git remote remove origin
done
fi;
rm -rf /d/Hadoop/repo2/pic/*
sleep 3
done