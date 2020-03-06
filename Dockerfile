FROM centos

MAINTAINER lakhan

WORKDIR /usr/apps/hello-docker/

RUN yum -y install nodejs 

RUN yum -y install npm 

#RUN ln -s /usr/bin/nodejs /usr/bin/node........;;;;;

RUN npm install -g http-server

ADD . /usr/apps/hello-docker/

ADD index.html /usr/apps/hello-docker/index.html

CMD ["http-server", "-s"]
