.PHONY all clean

all:	

clean:	$(shell docker stop $(shell docker ps -qa); docker rm $(shell docker ps -qa); docker rmi -f $(shell docker image -qa); docker volume rm $(shell docker volume ls -q); docker network rm $(shell docker volume ls -q) 2>/dev/null)