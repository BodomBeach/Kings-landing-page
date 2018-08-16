# Growth Hacking et Landing Pages THP
# Projet du 16 août 2018

## En local

Après avoir cloné le repo, tape dans ton joli terminal

- `bundle install && rails db:migrate` **si tu as la postgre installé sur ton ordinateur**
- `bundle install --without production && rails db:migrate` **si tu n'as pas postgre installé sur ton ordinateur**

Mais pour des raisons de clés d'API et de configuration action_mailer, je vous conseille davantage de vous tourner vers la deuxième proposition...

## Sur heroku

...Rendez-vous donc sur ........ pour admirer le boulot !

## L'application

### Ruby on Rails

- *Ruby 2.5.1*  
- *Rails 5.2.0*

### Projet

Pas une, pas deux mais TROIS landing pages pour promouvoir ce qui nous occupe bien plus que de raison depuis maintenant 7 semaines : T h e  H a c k i n g  P r o j e c t

-----------

#### Front

A été intégrée à l'application le template Bootstrap 'Creative' (https://blackrockdigital.github.io/startbootstrap-creative/) pour le plaisir de vos globes oculaires

------------

#### Opérations marketing

- Le but est de cibler des personnes (françaises) potentiellement intéressées par la formation
- Les opérations ont été effectuées avec la `gem twitter`
- 3 bots twitter ont été réalisés qui envoient un message aux 10 derniers followers des pages sélectionnées

**LP 1 : Général**  
Catégorie générale ayant pour but de toucher un maximum de monde, on trouve notamment dans les pages sélectionnées Pôle Emploi et des pages d'entrepreneurs

**LP 2 : Strasbourg city**  
Les pages sélectionnées sont des pages locales (magazines locaux, salles de concerts...)

**LP 3 : Devs ou apprenti devs**  
Les pages sélectionnées sont des pages tech/développement dont OpenClassrooms et Grafikart


##### Scheduler  
Les trois tâches sont programmées grâce au Heroku Scheduler : elles se lancent chaque jour une fois, avec 30 minutes d'intervalle entre les trois.

-----------------------

#### Call to action
Lorsqu'un visiteur s'inscrit à la newsletter via un des formulaires sur le site, il est enregistré en base et lui est envoyé un mail grâce à la `gem mailjet` lié à un formulaire de contact.

##### Scheduler  
Les personnes inscrites reçoivent un mail une fois par semaine grâce au Heroku Scheduler.

-----------------------
#### Analyse des metrics  

Pour l'analyse d'audience de l'application a été utilisé le fameux Google Analytics

----------------------

## La team

Ce projet a été réalisé avec ❤️  par :

- Les grenoblois : Nicolas Bertin, Ludovic Bourgoin et Tom Ballu
- Les strasbourgeois : Soraya Fructuoso, Hugo Payet et Samaneh Vaezi
- Le parisien égaré : David Belaga

Bonne corrections les amis :kissing_heart:
