# ml-docker
Docker images to support Python ML development

How to get your image to Dockerhub:

1. Create a repo in Dockerhub, e.g. marctorsoc/cuda-python39
1. Build: `docker build - < Dockerfile`
1. Tag: `docker tag <image_tag> marctorsoc/cuda-python39`
1. Login: `docker login --username marctorsoc`
1. Publish: `docker push marctorsoc/cuda-python39`

See other operations in 
[cheatsheet](https://docs.google.com/presentation/d/107zGXfhZJemctJLPv3usxpd8nPfYbtWtQ5FzKaEW6rs/edit?usp=sharing)
 or in [video](https://www.youtube.com/watch?v=Q6YDB3a_whM).
