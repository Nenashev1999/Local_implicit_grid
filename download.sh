export PYTHONPATH="$PWD:$PYTHONPATH"
#pushd .

# using one GPU is sufficient
export CUDA_VISIBLE_DEVICES=0

# download the model weights.
wget -q https://storage.googleapis.com/local-implicit-grids/pretrained_ckpt.zip
unzip pretrained_ckpt.zip; rm pretrained_ckpt.zip

# fetch a test object and compute point cloud.
mkdir -p demo_data
wget -q https://cs.uwaterloo.ca/~c2batty/bunny_watertight.obj
mv bunny_watertight.obj demo_data

# download more demo data for scene reconstruction.
wget -q http://storage.googleapis.com/local-implicit-grids/demo_data.zip
unzip demo_data.zip; rm demo_data.zip

