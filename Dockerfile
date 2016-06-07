FROM maven:latest

RUN curl -L -O https://github.com/babanomania/primer-on-technology-trends/archive/master.zip
RUN unzip master.zip
RUN rm -f master.zip
WORKDIR primer-on-technology-trends-master
WORKDIR Ex3_JSF/MyFacesDemo
RUN mvn clean package

EXPOSE 8080

CMD ["mvn", "jetty:run"]


