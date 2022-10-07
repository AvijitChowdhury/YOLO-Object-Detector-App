# yolo-object-detection

Yolo in streamlit service.

Demo:

# How to build

## Using docker

1. `docker build -t yolo-service .`
2. `docker run -dp 8501:8501 yolo-service`

## Directly

1. Download the weight file from https://pjreddie.com/media/files/yolov3.weights and put under the model folder.
2. Then run `streamlit run app.py`

Author:
```
Avijit Chowdhury
```
