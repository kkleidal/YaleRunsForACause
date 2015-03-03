FROM tutum/lamp
RUN rm -fr /app
VOLUME ["/app"]
EXPOSE 80 3306
ADD startup.sh /startup.sh
RUN chmod +x /startup.sh
CMD ["/startup.sh"]
