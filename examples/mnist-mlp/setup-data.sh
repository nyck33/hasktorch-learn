#!/usr/bin/env bash

mkdir data
pushd data
#wget http://yann.lecun.com/exdb/mnist/train-images-idx3-ubyte.gz
wget https://ossci-datasets.s3.amazonaws.com/mnist/train-images-idx3-ubyte.gz
#wget http://yann.lecun.com/exdb/mnist/train-labels-idx1-ubyte.gz
wget https://ossci-datasets.s3.amazonaws.com/mnist/train-labels-idx1-ubyte.gz
#wget http://yann.lecun.com/exdb/mnist/t10k-images-idx3-ubyte.gz
wget https://ossci-datasets.s3.amazonaws.com/mnist/t10k-images-idx3-ubyte.gz
#wget http://yann.lecun.com/exdb/mnist/t10k-labels-idx1-ubyte.gz
wget https://ossci-datasets.s3.amazonaws.com/mnist/t10k-labels-idx1-ubyte.gz
popd

