# Custom VM
This repo uses Docker to immitate a lightweight VM. The biggest pro of using Docker is its portability.
### Building a VM image:
```sh
docker build -t conordonihoo/vm:<specific-tag> .
```
### Pushing a VM image to Docker Hub:
```sh
docker push conordonihoo/vm:<specific-tag>
```
### Pulling a VM image from Docker Hub:
```sh
docker pull conordonihoo/vm:<specific-tag>
```
### Running a VM image interactively:
```sh
docker run --rm -it conordonihoo/vm:<specific-tag>
```
