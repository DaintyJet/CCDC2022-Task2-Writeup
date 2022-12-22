FROM sh0rtcyb3r/ccdc23_af_django:latest
# https://www.techrepublic.com/article/how-to-create-users-and-groups-in-linux-from-the-command-line/
RUN useradd -m user && echo "user:1qazxsW@1"|chpasswd && groupadd sshUser && usermod -aG sshUser user 
RUN apt-get update && apt-get install openssh-server -y
RUN service ssh start

COPY entrypoint.sh /
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]