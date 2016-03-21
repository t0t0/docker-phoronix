# docker-phoronix
Benchmarking docker container with phoronix test suite

This project deploys a docker container with Phoronix Test Suite installed, as well as a couple of tests that are predefined in the Dockerfile.  
The purpose of this container will solely be to benchmark your docker-machine.  
For ease of use, a couple of 'make commands' are supplied within this repo.` 

## Installation


After cloning the repository, just execute these commands:

**Deployment**  

```
$ make bench_deploy
```


**Execution**

```
$ make bench
```
