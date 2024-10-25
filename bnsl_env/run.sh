docker build -t dwlee_bnsl --build-arg UID=$(id -u) --build-arg GID=$(id -g) .

docker run -it --init \
   --gpus all \
   --ipc=host \
   --network=host \
   -v /media/ssd1/users/dwlee:/workspace \
   -v /media/NAS3:/NAS3 \
   -u $(id -u):$(id -g) \
   --name dwlee_gpuall_bnsl \
   dwlee_bnsl bash

docker exec -it -u 0 dwlee_gpuall_bnsl bash
# apt-get update
sudo apt-get install zip