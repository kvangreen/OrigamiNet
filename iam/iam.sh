#!/bin/bash

dst=$1

mkdir -p $dst/{forms,xml,pargs}

cat {formsA-D,formsE-H,formsI-Z}.tgz | tar -zxvf - -i -C $dst/forms
tar zxvf xml.tgz -C $dst/xml

python `dirname "$0"`/iam_par_gt.py $dst
