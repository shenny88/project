FROM devopsedu/webapp
RUN apt update
RUN apt upgrade -y
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/functions.php /var/www/html
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/content/about-us.php /var/www/html/content
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/content/home.php /var/www/html/content
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/content/contact.php /var/www/html/content
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/content/products.php /var/www/html/content
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/content/404.php /var/www/html/content
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/config.php /var/www/html
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/index.php /var/www/html
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/template/template.php /var/www/html/template
COPY /home/jenkins_slave/workspace/deploy_php_docker_container/website/readme.md /var/www/html
RUN curl https://raw.githubusercontent.com/shenny88/project/master/website.conf -o /etc/apache2/sites-available/000-default.conf
EXPOSE 80

