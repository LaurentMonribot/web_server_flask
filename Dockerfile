FROM centos:latest
MAINTAINER Laurent
COPY . /app
WORKDIR /app
RUN yum -y install python && \
    yum -y --enablerepo=extras install epel-release && \
    yum -y install python-pip
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["hello.py"]