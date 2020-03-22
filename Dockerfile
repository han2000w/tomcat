FROM centos:latest
RUN  yum install -y python python-pip net-tools
RUN pip install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
