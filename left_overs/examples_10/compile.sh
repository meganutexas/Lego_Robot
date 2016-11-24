#bash script to compile and run a .quorum file
#author: Megan Avery

if [ $# -eq 1 ]
  then
    cp $1 ../../QuorumFiles
    cd ../../QuorumFiles
    java -jar Quorum.jar $1 > compile.txt
    NUM=$(grep -c "Build Successful" compile.txt)
    if [[ $NUM == 0 ]]; then
        cat compile.txt
    else
    {
        mv Run/Default.jar Run/$1.jar
        cp Run/$1.jar ../lesson10/examples
    }
    fi
    rm -rf Build Run $1 compile.txt
    cd ../lesson10/examples
  else 
    echo USAGE: bash compile.sh [quorum file] 
    echo EXAMPLE: bash compile.sh hello.quorum 
fi
