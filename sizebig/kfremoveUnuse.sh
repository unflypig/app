
f use it.
## it remove the first max-5 files in each directory

function remove_files() {
cnts=`ls -l | grep file | wc -l`
echo -e "files all $cnts"
if [ $cnts -gt 5 ]; then
    rmcnts=`expr $cnts - 5`
    if [ $rmcnts -gt 0 ]; then
        echo -e "will rm files $rmcnts"
        rmfiles=`ls | head -n $rmcnts | cut -d ' ' -f10`
        echo -e "Will remove files $rmfiles"
        rm -rf $rmfiles
    fi
fi
}
for i in `ls .`; do
    if [ -d $i ]; then
    echo -e "\n do with $i"
    cd $i
    remove_files
    cd ..
    echo -e "\n"
    fi
done
rm 20f41b7* -rf
