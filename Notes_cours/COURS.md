# Blockchain et Développement

But : Développer une application décentralisée 

3 notes : 
- Examen théorique
- Projet
- Prise de note

## Fonction de hashage 

Une fonction de hashage cryptographique est une fonction pure et déterministe qui prend en entrée un message de taille arbitraire et qui produit en sortie en ensemble de taille fixe. Ces sorties sont généralement appelées hash ou digest de l'entrée. 

- Determinisme : Pour une entrée donnée, la sortie est toujours la même. 
- Vitesse : Quelques secondes pour calculer le hash d'un message. 
- Résistance aux collisions : Il devrait être difficile de trouver deux messages différents qui produisent le même hash. 
- Non inversible : Une fonction de hashage ne doit pas pouvoir être inversée pour retrouver le message d'origine à partir du hash. 

## Rappel sur la cryptographie asymétrique

La cryptographie asymétrique est un système de chiffrement qui utilise une `paire de clés (privée, publique)` pour chiffrer et déchiffrer des messages.

Concrètement ça permet que personne ne puisse envoyer de message en notre nom, et que personne ne puisse lire les messages qui nous sont destinés.

Dans les faits c'est comme une grande base de données où tout est accessible à tout le monde, mais où personne ne peut modifier les données sauf si elles sont signées par une clé privée.

Ce sont des `signatures numériques` : c'est un hash signé avec une clé privée.

La clé publique permet de vérifier la signature, mais pas de la générer.

## La blockchain

La blockchain est une technologie de stockage et de transmission d'informations, transparente, sécurisée, et fonctionnant sans organe central de contrôle.

La blockchain est un registre numérique publique indélébile et décentralisé : 
- Indélébile : Les données ne peuvent pas être supprimées ou modifiées, on peut juste écrire.
- Décentralisé : Chacun des noeuds concentre l'intégralité des données.
- Distribué : La totalité des données sont stockées sur de multiples serveurs. 

Chacun des noeuds contient l'historique de toutes les transactions de chacun des noeuds.

Exemple : Git, Torrent, etc. 

A noter qu'il n'y a aucune autorité de contrôle sur la blockchain, c'est un `système décentralisé auto-géré`.

Un bloc est limité en taille, mais peut contenir n'importe quel type de données (monnaies, code exécutable, medias, etc). 

A noter que la performance de la blockchain a un coût, et que la blockchain est un système où tout le monde peut contribuer à la blockchain en allouant de la puissance de calcul. 

Processus de validation = minage. 

Le coup de gestion des changements au sein d'une blockchain étant élevé, toutes les transactions nécessitent le paiement d'une taxe. Cette taxe est généralement payée en cryptomonnaie relative à la blockchain (comme le bitcoin dans le réseau Bitcoin).

L'objectif de cette taxe est d'empêcher les attaquants de spammer le réseau pour le saturer.

### Une chaine de hash 

![alt text](image-1.png)

Une blockchain est une chaine de hash. Chaque bloc contient un hash du bloc précédent.
Donc un changement de hash dans un bloc entraine un changement de hash dans tous les blocs suivants.

Concrètement le hash est un moyen de vérifier l'intégrité des données. Le système est donc fait pour s'auto-gérer pour éviter ce genre de problème.

### Méthode de consensus

Consensus : Toutes les blockchain ont un algorithm de consensus qui décide si oui ou non une chaine de données sera intégrée au prochain bloc. 

Par exemple : Un vendeur propose un bien sur la blockchain et deux acheteurs veulent l'acheter. Comment le réseau peut-il décider qui a acheté en premier ? 
Pire, comment empêcher de dire au vendeur que les deux ont acheté le bien et d'encaisser deux fois ?

Le but est de trouver un moyen de déterminer comment les transactions sont choisies et ordonnées afin d'avoir un seul état de la blockchain. 
En d'autres termes, il faut trouver un moyen d'`établir un consensus sur les blocs qui sont ajoutés à la chaine`. 

#### Algorithme proof of work : 

Beaucoup de blockchains publiques comme Bitcoin ou Ethereum utilisent cet algorithme de consensus connu sous le nom de `proof of work`. Une preuve de travail c'est une preuve cryptographique que la transaction a bien été validée. Les noeuds qui remplissent ce rôle sont appelés les `mineurs`.

Concrètement le premier mineur qui va arrivé à trouver la preuve de travail va pouvoir ajouter le bloc à la blockchain.

Ce mécanisme est assez simple, l'identifiant de chaque bloc dans la chaine est un hash qui inclut l'identifiant du bloc précédent, toutes les transactions du bloc et un `nonce`. Donc pour ajouter un bloc à la chaine, il faut trouver un hash qui commence par un certain nombre de zéros.
Comme il n'est pas possible de prédir à quoi ressemblera un hash, un mineur ne peut que tenter de cacluler le hash du bloc en modifiant la valeur du nonce jusqu'à ce qu'il obtienne un hash qui corresponde aux critères du futur bloc.

Sachant que le nonce n'est pas fixe, il faut le rechercher pour chaque bloc. C'est là que les mineurs entrent en courses pour résoudre le puzzle. 

## Bitcoin 

### Présentation 

Jusqu'à maintenant, nous avons décrit la blockchain en tant que base de données publique, mais nous n'avons pas encore parlé de ce que nous pouvons y stocker.

Bitcoin : première application de la blockchain.

Bitcoin est une monnaie numérique qui permet de faire des transactions sans passer par une banque, sans autorité de contrôle. 

Voir pdf pour plus de détails.

## Ethereum

### Présentation

Ethereum est une plateforme open-source de blockchain qui permet de créer des contrats intelligents (smart contracts). Elle a été présdentée en 2013 et lancée en 2015 par Vitalik Buterin.

Sa principale particularité est la possibilité d'y `déployer du code qui pourra être exécuté dans la blockchain sous forme de smart contracts`.

Un smart contract est un court programme écrit dans la blockchain lors d'une transaction et qui peuvent réagir aux transactions qui lui sont envoyées en exécutant une logique arbitraire. Chaque smart contract a également son propre état arbitraire qui peut être mis à jour sur n'importe quelle transaction et peut contenir n'importe quelle donnée. 

