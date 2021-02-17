FROM python:3
COPY . /py_word_cloud_docker/
ENV JAVA_HOME /usr/lib/jvm/java-1.7-openjdk/jre
RUN apt-get update && apt-get install -y g++ default-jdk
RUN pip install konlpy
RUN pip install wordcloud
RUN pip install konlpy
RUN pip install matplotlib
RUN pip install flask
RUN pip install flask_cors

WORKDIR /py_word_cloud_docker
RUN mkdir outputs

# Write left part as you want
CMD python word_cloud.py