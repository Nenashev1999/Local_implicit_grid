export PYTHONPATH="$PWD:$PYTHONPATH"

# using one GPU is sufficient
export CUDA_VISIBLE_DEVICES=0


# reconstruct an object. since objects are much smaller than entire scenes,
# we can use a smaller point number and number of optimization steps to speed
# up.
python core/reconstruct_geometry.py \
        --input_ply demo_data/bunny.ply \
            --part_size=0.20 --npoints=2048 --steps=3001

# reconstruct a dense scene
python core/reconstruct_geometry.py \
        --input_ply demo_data/living_room_33_1000_per_m2.ply \
            --part_size=0.25

# reconstruct a sparser scene using a larger part size
python core/reconstruct_geometry.py \
        --input_ply demo_data/living_room_33_100_per_m2.ply \
            --part_size=0.50

