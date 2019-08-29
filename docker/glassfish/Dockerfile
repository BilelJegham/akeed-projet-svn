FROM openjdk:8-jdk
MAINTAINER Bilel Jegham <contact.bileljegham@gmail.com>


RUN apt-get update && \
    apt-get install -y wget && \
    wget http://download.oracle.com/glassfish/5.0.1/nightly/latest-glassfish.zip && \
    mv latest-glassfish.zip /opt/ && \
    jar xvf /opt/latest-glassfish.zip && \
    rm /opt/latest-glassfish.zip

ENV PATH=/glassfish5/bin:/opt/app/bin:$PATH \
    PASSWORD=glassfish

# 4848 (administration), 8080 (HTTP listener), 8181 (HTTPS listener), 9009 (JPDA debug port)
EXPOSE 4848 8080 8181 9009 8686

RUN chmod +x /glassfish5/bin/asadmin

WORKDIR /home

#COPY pwdfile /opt/
# RUN asadmin start-domain && \

#  asadmin --user $ADMIN_USER --passwordfile=/opt/pwdfile disable-secure-admin && \
#  asadmin stop-domain

CMD ["asadmin", "start-domain", "-v"]