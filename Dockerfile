FROM ubuntu:noble

RUN apt update && apt install -y --no-install-recommends cgit apache2 && rm -r /var/lib/apt/lists/*

RUN ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/

EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]