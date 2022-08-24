# Custom VM

### Building a VM image:
```sh
docker build -t conordonihoo/vm:<specific-tag> .
```
### Pushing a VM image to Docker Hub:
```sh
docker push conordonihoo/vm:<specific-tag>
```
### Running a VM image interactively:
```sh
docker run --rm -it conordonihoo/vm:<specific-tag>
```
