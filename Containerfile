FROM fedora:latest

# Upgrade system and install packages
RUN dnf upgrade -y && \
    dnf install -y tuxpaint vim httpd

# Copy the HTML file into the web server directory
COPY myinfo.html /var/www/html/myinfo.html

# Expose port 80
EXPOSE 80

# Run httpd in foreground at boot
CMD ["httpd", "-D", "FOREGROUND"]