FROM devopsedu/webapp
RUN apt update
RUN apt upgrade -y
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/* /var/www/html
RUN curl https://raw.githubusercontent.com/shenny88/project/master/website.conf -o /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apachectl", "-D" , "FOREGROUND"]
