#FROM tomcat:latest
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY /webapp/target/*.war /usr/local/tomcat/webapps


# FROM maven as mv
# WORKDIR /app
# COPY . /app
# RUN mvn install

# FROM openjdk:11.0
# WORKDIR /app
# COPY --from=mv /app/target/*.war /app
# EXPOSE 9090
# CMD ["java","-jar","*.war"]

FROM openjdk:11.0
WORKDIR /app
COPY  webapp/*.war /app
EXPOSE 9090
CMD ["java","-jar","*.war"]
