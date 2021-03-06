## Local Implicit Grid Representations for 3D Scenes
By: [Chiyu "Max" Jiang](http://maxjiang.ml/),
[Avneesh Sud](https://research.google/people/105052/),
[Ameesh Makadia](http://www.ameeshmakadia.com/index.html),
[Jingwei Huang](http://stanford.edu/~jingweih/),
[Matthias Niessner](http://niessnerlab.org/members/matthias_niessner/profile.html),
[Thomas Funkhouser](https://www.cs.princeton.edu/~funk/)

\[[Project Website](http://maxjiang.ml/proj/lig)\] \[[Paper PDF Preprint](https://arxiv.org/abs/2003.08981)\]
Main repo: https://github.com/tensorflow/graphics/tree/master/tensorflow_graphics/projects/local_implicit_grid
### Introduction

This repository is based on our CVPR 2020 paper:
[Local Implicit Grid Representations for 3D Scenes](https://arxiv.org/abs/2003.08981).
The [project webpage](http://maxjiang.ml/proj/lig) presents an overview of the
project.

Shape priors learned from data are commonly used to reconstruct 3D objects from
partial or noisy data. Yet no such shape priors are available for indoor scenes,
since typical 3D autoencoders cannot handle their scale, complexity, or
diversity. In this paper, we introduce Local Implicit Grid Representations, a
new 3D shape representation designed for scalability and generality. The
motivating idea is that most 3D surfaces share geometric details at some
scale -- i.e., at a scale smaller than an entire object and larger than a small
patch. We train an autoencoder to learn an embedding of local crops of 3D shapes
at that size. Then, we use the decoder as a component in a shape optimization
that solves for a set of latent codes on a regular grid of overlapping crops
such that an interpolation of the decoded local shapes matches a partial or
noisy observation. We demonstrate the value of this proposed approach for 3D
surface reconstruction from sparse point observations, showing significantly
better results than alternative approaches.

Our deep learning code base is written using [Tensorflow](https://www.tensorflow.org/).

## Quickstart

For installing you can use docker or building system

### Buildig 
For building you need python 3.7+, pip: 
```bash
pip install -r requirements.txt
```
For running tests use:
```bash
./download.sh
```

```bash
./train.sh
```


### For docker building:

You can find built docker image at https://hub.docker.com/repository/docker/nenashev199/local_implict_grid

```bash
docker build -t local_implicit_grid .
```
For running use:
```bash
docker run local_implicit_grid
```



## Development

For modifying the project the main files is reconstruct_geometry.py and reconstruct_geometry.py. This files located in core catalog. By modifying this files you can change the config of running and adding some new function for evaluation. 

### Scene reconstruction using pretrained part encoding
Currently we are releasing the evaluation code to use our pretrained model for
scene reconstruction, along with definitions for the local implicit grid layer
and part-autoencoder model. To directly use our script for surface
reconstruction, prepare the input point cloud as a `.ply` file with vertex
attributes: `x, y, z, nx, ny, nz`. See `resample_geometry.py` for creating an
input `.ply` file from a mesh. For demo input data, refer to the inputs
under `demo_data/`.


The part size parameter controls the granularity of the local implicit grid. For
scenes it should be in the range of 0.25 - 0.5 (meters). For objects, it depends
on the scale of the coordinates. Generally for normalized objects (max bounding
box length ~ 1) use a part size of ~0.2. Generally `part_size` should not be
greater than 1/4 of the minimum bounding box width.

### References
If you find our code or paper useful, please consider citing

    @inproceedings{Local_Implicit_Grid_CVPR20,
      title = {Local Implicit Grid Representations for 3D Scenes},
      author = {Chiyu Max Jiang and Avneesh Sud and Ameesh Makadia and Jingwei Huang and Matthias Nie??ner and Thomas Funkhouser},
      booktitle = {Proceedings IEEE Conf. on Computer Vision and Pattern Recognition (CVPR)},
      year = {2020}
    }

### Contact

Please contact [Max Jiang](mailto:maxjiang93@gmail.com) or
[Avneesh Sud](mailto:avneesh@google.com) if you have further questions!
