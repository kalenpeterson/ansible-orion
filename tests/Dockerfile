FROM registry.redhat.io/ansible-automation-platform-21/ee-supported-rhel8:latest

COPY requirements.txt ./

RUN pip3 install --upgrade pip && \
    pip3 install --upgrade -r ./requirements.txt

RUN ansible-galaxy collection install git+https://github.com/kalenpeterson/ansible-orion.git
