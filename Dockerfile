FROM devopsedu/webapp
RUN apt update
RUN apt upgrade -y
RUN mkdir -p /var/www/html/{content,template}
COPY website/functions.php /var/www/html
COPY website/content/about-us.php /var/www/html/content
COPY website/content/home.php /var/www/html/content
COPY website/content/contact.php /var/www/html/content
COPY website/content/products.php /var/www/html/content
COPY website/content/404.php /var/www/html/content
COPY website/config.php /var/www/html
COPY website/index.php /var/www/html
COPY website/template/template.php /var/www/html/template
COPY website/readme.md /var/www/html
RUN curl https://raw.githubusercontent.com/shenny88/project/master/website.conf -o /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apachectl", "-D" , "FOREGROUND"]
