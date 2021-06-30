FROM docker.elastic.co/apm/apm-server:7.4.2
USER root
RUN chown -R apm-server /usr/share/apm-server
RUN chmod -R 777 /usr/share/apm-server

USER apm-server
WORKDIR /usr/share/apm-server
EXPOSE 8200
CMD ./apm-server -e -d "*" 
