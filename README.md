An example dockerised python script using pyfiglet

Dependencies: docker and git

### Installation 

Requires docker and git to be installed, the commands below are for a bash command line 
in Linux, please adapt for your own system.

```bash
git clone https://github.com/martinjrobins/docker-rrox.git
cd docker-rrox
docker build -t docker-rrox .
```

## Running script

```bash
docker run docker-rrox
```
