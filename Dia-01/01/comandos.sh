

docker container ls

docker container ls -a

# Iterative Terminal
docker container run -ti ubuntu

# Roda em segundo plano, Deamon
docker container run -d nginx

docker container attach container-id

# Executa um comando, comando ls
docker container exec -ti container-id ls /

# Executa um comando, comando bash
docker container exec -ti container-id bash

docker container stop container-id

docker container start container-id

docker container restart container-id

# inpeciona as propriedades do container
docker container inspect container-id

# Mostra os statur do container CPU, Memoria
docker container stats container-id

# ve os logs do container
docker container logs -f container-id

# remove um container, so pode ser usando em container parado
docker container rm container-id

# força a remoção de um container
docker container rm -f container-id

# Limita a quantidade de memoria em 128 Mega
docker container run -d -m 128M nginx

# Limita a quantidade de cpus 
docker container run -d -m --cpus 0.5 128M nginx

# constroi a imagem baseado em um dockerfile encontrado no diretorio atual
# -t = tag
docker image build -t myapp:1.0 .
