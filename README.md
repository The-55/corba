# 🧮 TP Systèmes Répartis - Calculatrice CORBA

## 📋 Table des Matières
- [Contexte](#contexte)
- [Objectifs](#objectifs)
- [Architecture](#architecture)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Structure du Projet](#structure-du-projet)
- [Fonctionnalités](#fonctionnalités)
- [Dépannage](#dépannage)

## 🎯 Contexte

Ce projet implémente une **calculatrice distribuée** utilisant la technologie **CORBA** (Common Object Request Broker Architecture). L'objectif est de démontrer les principes fondamentaux des systèmes répartis à travers un service de calcul accessible via le réseau.

## 🚀 Objectifs

### Pédagogiques
- ✅ Maîtriser l'architecture CORBA
- ✅ Comprendre les appels de procédures distantes (RPC)
- ✅ Implémenter un service distribué avec gestion d'exceptions
- ✅ Utiliser un serveur de noms pour la découverte de services

### Techniques
- 🛠 Définition d'interfaces avec IDL
- 🔄 Génération automatique de code avec `idlj`
- 🌐 Configuration et utilisation d'ORBD
- 🚨 Gestion d'exceptions distribuées

## 🏗 Architecture
