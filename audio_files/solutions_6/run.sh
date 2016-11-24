#bash script to compile and run a .quorum file
#author: Megan Avery

if [ $# -eq 1 ]
  then
    cp $1 ../QuorumFiles
    cd ../QuorumFiles
    java -jar Quorum.jar $1 > compile.txt
    NUM=$(grep -c "Build Successful" compile.txt)
    if [[ $NUM == 0 ]]; then
		cat compile.txt
	else
	{
		java -jar Run/Default.jar 2> /dev/null 
	}
	fi
    rm -rf Build Run $1 compile.txt
    cd ../lesson6_solutions
  else 
    echo USAGE: bash compile.sh [quorum file] 
    echo EXAMPLE: bash compile.sh hello.quorum 
fi
