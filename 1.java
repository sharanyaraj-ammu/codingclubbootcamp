for item in `ls *.java`
do
    filename=`echo $item | awk -F. '{ print $1 }'`
    if [ -d $filename ]
    then
         echo "inside if condition"
         rm -rf $filename


    fi
    mkdir $filename
    cp $item $filename
done