FROM ubuntu
RUN apt-get update
RUN apt-get install -y git-core
RUN apt-get install -y maven
RUN apt-get install -y openjdk-8-jdk
#RUN git clone https://github.com/guilleoliva/Docker.git
RUN mkdir Docker
ADD pom.xml Docker/pom.xml
ADD src Docker/src 
EXPOSE 8080
RUN mkdir /data
WORKDIR Docker
ENTRYPOINT mvn jetty:run
