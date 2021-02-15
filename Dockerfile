FROM devopsedu/webapp
RUN apt update 
RUN apt upgrade -y
RUN apt install git -y
RUN curl https://raw.githubusercontent.com/shenny88/project/master/website.conf -o /etc/apache2/sites-available/000-default.conf
EXPOSE 80:80 CMD ["apachectl", "-D" , "FOREGROUND"]
