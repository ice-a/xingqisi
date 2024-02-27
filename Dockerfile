FROM python:3.9-slim-buster
#设置工作目录
WORKDIR /app
# 安装包
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
#将dockerfile同级目录的文件传到docker容器内的app文件夹下
ADD . /app
#运行python的命令
CMD python api_info.py
# 构建及使用
## 构建
### docker build -t xingqisi .
## 使用
### docker run -d -p 8080:8080 xingqisi