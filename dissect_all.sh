#!/bin/bash

QUANTILE=0.01
MINIOU=0.04
SEG=netpqc
DATASET=places

#MODEL=resnet152
#for LAYER in 0 4 5 6 7
#do

#python -m experiment.dissect_experiment \
#    --quantile ${QUANTILE} --miniou ${MINIOU} \
#    --model ${MODEL} --dataset ${DATASET} --seg ${SEG} --layer ${LAYER}
#
#done

#MODEL=alexnet
#for LAYER in conv1 conv2 conv3 conv4 conv5
#do

#python -m experiment.dissect_experiment \
#    --quantile ${QUANTILE} --miniou ${MINIOU} \
#    --model ${MODEL} --dataset ${DATASET} --seg ${SEG} --layer ${LAYER}

#done

MODEL=biggan
for LAYER in layer0 layer1 layer2 layer3 layer4 layer5
do

python -m experiment.dissect_experiment \
    --quantile ${QUANTILE} --miniou ${MINIOU} \
    --model ${MODEL} --dataset ${DATASET} --seg ${SEG} --layer ${LAYER}

done


