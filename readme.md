# Portainer Agent

Agent [Portainer](https://www.portainer.io/) dédié à la gestion des container d'un serveur.

Nécessite un serveur Portainer.

## Sécurité

L'installation d'un agent Portainer ne doit pas être exposée au public. L'accès à l'agent doit être faite soit sur un réseau local, soit au travers d'un tunnel SSH.

## Installation

Copie des sources dans le répertoire ``portainer_agent`` :

```shell
git clone https://github.com/SergeBregliano/docker-portainer-agent.git portainer_agent
```

Lancer le système de mise à jour :

```shell
sh ./updateStack.sh
```

### Connexion au serveur Portainer

Le port exposé par l'agent Portainer est le **9001**.