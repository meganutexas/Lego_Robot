if [ $# -eq 1 ]
  then
    scp -oKexAlgorithms=+diffie-hellman-group1-sha1 $1 root@10.0.1.1:/home/lejos/programs/
  else 
    echo USAGE: bash transfer.sh [quorum file] 
    echo EXAMPLE: bash transfer.sh hello.quorum.jar
fi
