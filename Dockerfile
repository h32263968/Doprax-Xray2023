FROM nginx:latest
LABEL ifeng fscarmen mack-a ygkkk
EXPOSE 80
USER root
ENV uuid 54091fe6-0c03-4195-b0ae-f30cac9a3173
COPY nginx.conf /etc/nginx/nginx.conf
COPY config.json ./
COPY entrypoint.sh ./
RUN chmod a+x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]
