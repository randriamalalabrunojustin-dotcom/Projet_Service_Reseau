\# Projet Services Réseaux — L2ENI



\## 📌 Présentation



Ce projet consiste à concevoir, déployer et sécuriser une infrastructure complète de services réseaux pour le domaine \*\*l2eni.mg\*\*.



L'objectif est de mettre en place plusieurs services permettant d'assurer la communication, l'authentification, l'hébergement web, la messagerie électronique et la supervision de l'infrastructure réseau.



\## 🎯 Objectifs



\- Mettre en place une infrastructure réseau fonctionnelle et sécurisée.

\- Configurer un serveur Ubuntu Server 24.04.

\- Mettre en place un service DNS avec BIND9.

\- Déployer un annuaire LDAP pour l'authentification centralisée.

\- Héberger une application web avec Apache2 et PHP.

\- Mettre en place un serveur de messagerie avec Postfix et Dovecot.

\- Installer une interface web de messagerie avec Roundcube.

\- Mettre en place une solution de supervision avec Prometheus, Node Exporter, Alertmanager et Grafana.

\- Centraliser et visualiser les informations importantes de l'infrastructure.

\- Tester et valider le fonctionnement de chaque service.



\## 🏗️ Architecture



L'infrastructure repose principalement sur un serveur Ubuntu Server 24.04.



```text

&#x20;                        ┌─────────────────────┐

&#x20;                        │      Utilisateurs   │

&#x20;                        │      / Clients      │

&#x20;                        └──────────┬──────────┘

&#x20;                                   │

&#x20;                                   ▼

&#x20;                        ┌─────────────────────┐

&#x20;                        │    Réseau local     │

&#x20;                        │    192.168.56.0/24  │

&#x20;                        └──────────┬──────────┘

&#x20;                                   │

&#x20;                                   ▼

&#x20;                ┌──────────────────────────────────┐

&#x20;                │       Ubuntu Server 24.04        │

&#x20;                │       srv-reseau                  │

&#x20;                │       192.168.56.10               │

&#x20;                ├──────────────────────────────────┤

&#x20;                │ DNS       → BIND9                 │

&#x20;                │ Web       → Apache2 + PHP         │

&#x20;                │ LDAP      → OpenLDAP              │

&#x20;                │ Mail      → Postfix + Dovecot     │

&#x20;                │ Webmail   → Roundcube             │

&#x20;                │ Monitoring → Prometheus + Grafana │

&#x20;                │ Alerting  → Alertmanager           │

&#x20;                └──────────────────────────────────┘

```



\## 🖥️ Environnement



\### Serveur



\- Système : Ubuntu Server 24.04 LTS

\- Nom d'hôte : `srv-reseau`

\- Domaine : `l2eni.mg`

\- Adresse IP principale : `192.168.56.10`



\### Virtualisation



\- VirtualBox

\- Machines virtuelles Ubuntu Server

\- Réseau virtuel utilisé pour les tests et la configuration des services



\## 🌐 Services réseau



\### DNS — BIND9



Le service DNS permet de résoudre les noms de domaine internes.



Zone principale :



```text

l2eni.mg

```



Zone inverse :



```text

56.168.192.in-addr.arpa

```



Le DNS permet notamment d'associer les noms des services à leurs adresses IP.



\### 🔐 LDAP — OpenLDAP



OpenLDAP est utilisé comme annuaire centralisé pour gérer les utilisateurs et leurs informations d'authentification.



Exemple de structure :



```text

dc=l2eni,dc=mg

└── ou=people

&#x20;   ├── user1

&#x20;   ├── user2

&#x20;   └── ...

```



L'application web utilise LDAP pour vérifier les identifiants des utilisateurs.



\### 🌐 Serveur Web — Apache2



Apache2 permet d'héberger l'application web du projet.



Technologies utilisées :



\- Apache2

\- PHP

\- HTML

\- CSS

\- LDAP



L'application permet notamment aux utilisateurs authentifiés d'accéder aux fonctionnalités prévues dans le projet.



\### 📧 Messagerie — Postfix + Dovecot



La messagerie repose sur deux services principaux :



\- \*\*Postfix\*\* : gestion de l'envoi et du transport des emails.

\- \*\*Dovecot\*\* : gestion de l'accès aux boîtes mail.



Une interface webmail avec \*\*Roundcube\*\* est également prévue pour permettre l'accès aux emails depuis un navigateur.



\### 📊 Supervision



La supervision permet de surveiller l'état et les performances des services et du serveur.



Outils utilisés :



\- Prometheus

\- Node Exporter

\- Alertmanager

\- Grafana



Grafana permet de visualiser les métriques sous forme de tableaux de bord.



Exemples de métriques surveillées :



\- CPU

\- Mémoire RAM

\- Utilisation du disque

\- Trafic réseau

\- État des services

\- Métriques liées à Postfix et Dovecot



\## 🔒 Sécurité



Plusieurs mécanismes sont utilisés afin d'améliorer la sécurité de l'infrastructure :



\- Authentification centralisée avec LDAP.

\- Utilisation de HTTPS pour les services web.

\- Contrôle des accès réseau avec le pare-feu.

\- Séparation des différents services.

\- Surveillance de l'état du serveur.

\- Mise en place d'alertes avec Alertmanager.

\- Protection des informations sensibles à l'aide de `.gitignore`.



> Les mots de passe, clés privées, certificats privés et fichiers contenant des informations sensibles ne sont pas stockés dans ce dépôt.



\## 🧪 Tests et validation



Les différents services sont testés individuellement puis intégrés afin de vérifier leur bon fonctionnement.



\### Tests DNS



```bash

nslookup l2eni.mg

nslookup <nom-service>.l2eni.mg

```



\### Tests réseau



```bash

ping 192.168.56.10

```



\### Tests LDAP



Vérification de l'authentification et de la recherche des utilisateurs dans l'annuaire.



\### Tests Web



Accès à l'application depuis un navigateur et vérification de l'authentification LDAP.



\### Tests de messagerie



Vérification du fonctionnement de Postfix, Dovecot et de l'accès webmail.



\### Tests de supervision



Vérification de :



\- Prometheus

\- Node Exporter

\- Alertmanager

\- Grafana



\## 📁 Structure du dépôt



```text

Projet\_Service\_Reseau/

│

├── Captures/

│       └── Captures d'écran du projet

│

├── Configurations/

│       └── Fichiers de configuration des services

│

├── Rapport/

│       └── Documentation et rapport du projet

│

├── README.md

│

├── .gitignore

│

├── ISO/

│       └── Exclu du dépôt Git

│

└── VMs/

&#x20;       └── Exclu du dépôt Git

```



\## 🛠️ Technologies et outils



| Domaine | Technologie |

|---|---|

| Système | Ubuntu Server 24.04 |

| Virtualisation | VirtualBox |

| DNS | BIND9 |

| Annuaire | OpenLDAP |

| Web | Apache2 + PHP |

| Messagerie | Postfix + Dovecot |

| Webmail | Roundcube |

| Supervision | Prometheus |

| Exporter | Node Exporter |

| Alertes | Alertmanager |

| Visualisation | Grafana |

| Sécurité | HTTPS, pare-feu, authentification LDAP |



\## 📚 Résultats attendus



À la fin du projet, l'infrastructure doit permettre :



1\. La résolution des noms avec le DNS.

2\. L'authentification centralisée des utilisateurs avec LDAP.

3\. L'accès à l'application web.

4\. L'envoi et la réception des emails.

5\. L'accès aux emails via le webmail.

6\. La surveillance du serveur et des services.

7\. La visualisation des métriques dans Grafana.

8\. La détection et la notification des problèmes grâce à Alertmanager.



\## 👨‍💻 Auteur



\*\*Bruno Justin\*\*



Projet universitaire — \*\*L2 ENI\*\*



\---



\## 📄 Licence



Projet réalisé dans un cadre académique et pédagogique.

