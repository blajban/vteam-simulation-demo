FROM alpine:3.16

# Update container
RUN apk update && apk upgrade --available && sync 

# Install programs
RUN apk add --no-cache bash && apk add --no-cache curl 

# Copy scripts
# - Could be python script, c++ program or whatever
# - Could be multiple scripts
#
COPY scooter.sh .

# Cronjobs
# - Could add multiple jobs with different intervals
#
ADD crontab  /var/spool/cron/crontabs/scooter
RUN chmod 0644  /var/spool/cron/crontabs/scooter
RUN crontab  /var/spool/cron/crontabs/scooter

# Go
ENTRYPOINT [ "crond", "-f" ]