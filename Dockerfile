FROM fedora:26
RUN dnf update -y
RUN dnf install -y python
COPY cyberprobe.cfg /cyberprobe.cfg
COPY cyberprobe-sync /usr/local/bin/

# Sleep gives the VPN time to start and create the appropriate directories.
CMD cp /cyberprobe.cfg /config/cyberprobe.cfg; sleep 5; /usr/local/bin/cyberprobe-sync /config/cyberprobe.cfg /config/clients



