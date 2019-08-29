Akeed Projet  <!-- omit in toc -->
====

> Bilel Jegham <contact.bileljegham@gmail.com>

Ce dépôt contient un squelette pour un projet *OracleXE* et *OracleADF*.

- [Database](#database)
  - [Composition](#composition)
  - [Utilisatation](#utilisatation)
- [Application](#application)
  - [Composition](#composition-1)
- [Extra](#extra)
  - [Docker](#docker)
    - [Installation](#installation)
    - [Utilisation](#utilisation)


## Database

Le dossier database contient l'ensemble des codes et des tests liés à la base de données. Le versionnement de la base de données est géré via l'outil [Liquibase](https://www.liquibase.org/).


### Composition
Le dossier **src** contient les scripts SQL de lancement de la base.
Et le dossier **test** contient les fichiers `feature` des tests.


### Utilisatation
Afin de mettre à jour votre base de données de données vous pouvez utiliser la commande suivante :
```sh
# Windows
start ./bin/liquibase.bat --driver=oracle.jdbc.OracleDriver \
     --url="jdbc:oracle:thin:@<url>" \
     --username=<user> \
     --password=<pass> \
     --changeLogFile=data.yml \
     --logLevel=sql \
     update
# Linux
sh ./bin/liquibase --driver=oracle.jdbc.OracleDriver \
     --url="jdbc:oracle:thin:@<url>" \
     --username=<user> \
     --password=<pass> \
     --changeLogFile=data.yml \
     --logLevel=sql \
     update
```
Pour ajouter une modification à la base de données de données, vous pouvez créer un fichier sql dans le dossier `database/src`. 
Pour le format du fichier sql devra respecter les recommandations : https://www.liquibase.org/documentation/sql_format.html

Le nom de fichier devra être sous la forme `<num-chanset>-xxx.sql`


## Application

Sur le même modéle que le dossier `database`.

### Composition
Le dossier **src** contient le projet ADF et le dossier **test** contient les fichiers `feature` des tests.


## Extra
### Docker
#### Installation
 1. Oracle 18.3-small :    
 Pour générer l'image docker 18.3, il faut télécharger le fichier *db_home.zip*
(Oracle Database 18c Standard Edition 2 for Linux x64) disponible sur http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html

**Il est fortement conseillé de push cette image sur un *Docker Container Repository*.**    
 L'image étant lourde (20.4GB). Il sera plus pratique pour les développeurs de l'utiliser.

#### Utilisation

```shell
# Lancement
docker-compose up 

# Arret
docker-compose down
```




