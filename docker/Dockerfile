FROM openkm/openkm-ce

#LABEL maintainer="gehrig.david@gmail.com"
#
#RUN apt-get update && \
#    apt-get install -y tesseract-ocr-deu && \
#    apt-get install -y curl
#
#RUN curl -sL https://sourceforge.net/projects/openkm/files/6.3.9/OpenKM-6.3.9.zip/download -o /opt/openkm/OpenKM-6.3.9.zip && \
#    unzip -j -o /opt/openkm/OpenKM-6.3.9.zip OpenKM.war -d /opt/openkm/webapps && \
#    rm /opt/openkm/OpenKM-6.3.9.zip

COPY OpenKM.cfg /opt/openkm
#COPY logback.xml /opt/openkm
COPY server.xml /opt/openkm/conf
COPY mariadb-java-client-2.6.1.jar /opt/openkm/bin
