FROM postgres:15

COPY fs /
RUN chmod -R 755 /docker-entrypoint-initdb.d
ENV POSTGRES_PASSWORD=ppassword


