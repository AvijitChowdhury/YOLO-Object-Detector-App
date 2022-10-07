FROM python:3.8-slim-buster

RUN apt-get update -y
RUN apt install libgl1-mesa-glx wget libglib2.0-0 -y

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

WORKDIR /app

RUN wget https://pjreddie.com/media/files/yolov3-tiny.weights -P /model

EXPOSE 8501
# FROM python:3.8.2-slim
# EXPOSE 8501
# WORKDIR /app
# # RUN apt-get update
# # RUN apt install -y libgl1-mesa-glx
# RUN apt-get update -y
# RUN apt-get install libgl1-mesa-glx wget libglib2.0-0 -y
# COPY requirements.txt requirements.txt

# RUN pip install -r requirements.txt

# COPY . .
# RUN wget https://pjreddie.com/media/files/yolov3.weights -P /model

# # CMD streamlit run app.py

CMD streamlit run --server.port $PORT app.py
