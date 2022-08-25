# Custom VM
This repo uses Docker to immitate a lightweight VM. This allows me to have a coding environment that has the colorschemes, settings, and everything else I use when coding anywhere I go; all I have to do is spin up my VM and it will have everything I need.
## Demo:
![Alt Text](./vmgif.gif?raw=True)
## Instructions:
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
