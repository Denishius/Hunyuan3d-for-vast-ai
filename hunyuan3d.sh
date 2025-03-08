#!/bin/bash

mkdir Hunyuan

cd Hunyuan

git clone https://github.com/tencent/Hunyuan3D-2

cd Hunyuan3D-2

pip install -r requirements.txt

cd hy3dgen/texgen/custom_rasterizer

python3 setup.py install

cd ../../..

cd hy3dgen/texgen/differentiable_renderer

python3 setup.py install

cd ../../..

pip3 install gradio==3.39.0
python3 gradio_app.py --port 9090
