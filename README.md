# Utilisation de CORBA dans le contexte des systèmes répartis

## Contexte

Ce tp implémente une **calculatrice distribuée** utilisant la technologie **CORBA** (Common Object Request Broker Architecture). L'objectif est de démontrer les principes fondamentaux des systèmes répartis à travers un service de calcul accessible via le réseau.

##  Objectifs

### Pédagogiques
- Maîtriser l'architecture CORBA
- Comprendre les appels de procédures distantes (RPC)
- Implémenter un service distribué avec gestion d'exceptions
- Utiliser un serveur de noms pour la découverte de services

### Techniques
- Définition d'interfaces avec IDL
- Génération automatique de code avec `idlj`
- Configuration et utilisation d'ORBD
- Gestion d'exceptions distribuées

## 🏗 Architecture

**Composants :**
- **Client** : Consomme le service de calcul à distance
- **Serveur** : Expose la logique métier de calcul
- **ORBD** : Serveur de noms pour la résolution d'objets
- **ORB** : Broker d'objets pour la communication

## installation

### Prérequis
- JDK
- Outils CORBA (inclus dans le JDK)

### Configuration
```bash
# Vérification de l'installation Java
java -version
javac -version

# Recherche des outils CORBA

Get-ChildItem "C:\Program Files\Java\jdk-*\bin\idlj.exe"
