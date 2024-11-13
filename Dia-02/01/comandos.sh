#
docker container run -ti --mount type=bind,src=/opt/giropops,dst=/giropops debian

# ro = read only
docker container run -ti --mount type=bind,src=/opt/giropops,dst=/giropops,ro debian

#
docker container run -ti --mount type=volume,src=girop,dst=/giro debian

#
docker volume ls

#
docker volume create giropops

#
docker volume inspect giropops 

# Deleta todos volumes em desuso
docker volume prune

#
docker container prune

# sintax antiga, cria somente o container, não executa
docker container create -v /opt/giro/:/giropops --name dbdados centos

#
docker image build -t meu_apache:1.0.0 .

#
docker container run -d -p 8080:80 meu_apache:4.0.0
