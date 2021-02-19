HOSTS=( master1 master2 worker1 )
USER_NAME="root"

for HOST in "${HOSTS[@]}"
do 
    ssh $USER_NAME@$HOST docker rm -f cluster_zookeeper
    ssh $USER_NAME@$HOST docker rm -f cluster_kafka

done 
