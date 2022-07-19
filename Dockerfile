FROM openjdk:11
RUN useradd --system -s /bin/bash conciliator
RUN mkdir /usr/src/conciliator && chown conciliator.conciliator /usr/src/conciliator
USER conciliator
RUN wget -P /usr/src/conciliator https://github.com/codeforkjeff/conciliator/releases/download/v3.0.5/conciliator-3.0.5.jar
WORKDIR /usr/src/conciliator
EXPOSE 8080
CMD ["java","-jar", "conciliator-3.0.5.jar"]
