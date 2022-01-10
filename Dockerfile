# Set the base image
FROM python:3.8-slim

# Install packages needed to run the project
RUN apt-get update && \
    apt-get install -y --no-install-recommends toilet figlet git make && \
    rm -rf /var/lib/apt/lists/*

# clone pyfiglet
RUN git clone https://github.com/pwaller/pyfiglet
WORKDIR /pyfiglet

# create required directories for pyfiglet installation
RUN mkdir -p /usr/local/share/pyfiglet/ \
    chmod 777 /usr/local/share/pyfiglet/ 

# get pyfiglet dependencies
RUN python -m pip install --upgrade pip \ 
    pip install -r dev-requirements.txt

# install pyfiglet
RUN make full 
RUN python setup.py install 

# copy current project into image
COPY . . 

CMD python hello_world.py

