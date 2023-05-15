FROM debian:stable-slim
# Install Packages
RUN apt-get update && apt-get install -y \
  redshift \
  && rm -rf /var/lib/apt/lists/*

COPY /app/var /var
RUN useradd -ms /bin/bash admin && chmod a=+rwXt /var/tmp/night-and-day/mode

WORKDIR /home/admin
USER admin
COPY /app/home/ /home/admin/
RUN bash /home/admin/local/night-and-day/runner.sh
