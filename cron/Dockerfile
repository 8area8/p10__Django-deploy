# Use an official Python runtime as a parent image
FROM projeta10_django:latest

RUN apt-get update -y && apt-get install vim -y && apt-get install cron -y

ADD crontab /etc/cron.d/db_cron

# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/db_cron && crontab /etc/cron.d/db_cron && touch /var/log/cron.log