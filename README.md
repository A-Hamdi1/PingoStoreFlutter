# PingoStore - Application E-commerce Flutter

## 📱 Aperçu

PingoStore est une application e-commerce moderne et complète développée avec Flutter. Elle offre une expérience utilisateur fluide et intuitive pour la navigation, la recherche et l'achat de produits. L'application intègre Firebase pour l'authentification, le stockage des données et la gestion des produits.

## ✨ Fonctionnalités

### 🔐 Authentification
- Inscription et connexion par email/mot de passe
- Authentification via Google
- Vérification d'email
- Récupération de mot de passe
- Gestion de profil utilisateur

### 🛍️ Shopping
- Parcourir les produits par catégories
- Recherche de produits
- Affichage détaillé des produits avec variations
- Gestion du panier d'achat
- Liste de souhaits
- Processus de paiement

### 👤 Personnalisation
- Gestion du profil utilisateur
- Gestion des adresses de livraison
- Paramètres de l'application
- Historique des commandes

### 🎨 Interface utilisateur
- Design moderne et réactif
- Thème clair et sombre
- Animations fluides
- Indicateurs de chargement personnalisés
- Gestion des erreurs avec messages informatifs

## 🛠️ Technologies utilisées

### Framework et langage
- Flutter SDK
- Dart

### Gestion d'état et navigation
- GetX pour la gestion d'état, la navigation et l'injection de dépendances
- Get Storage pour le stockage local

### Backend et authentification
- Firebase Authentication
- Cloud Firestore
- Firebase Storage

### UI/UX
- Material Design
- Iconsax pour les icônes
- Shimmer pour les effets de chargement
- Carousel Slider pour les bannières
- Smooth Page Indicator
- Lottie pour les animations

### Utilitaires
- Image Picker pour la sélection d'images
- URL Launcher pour ouvrir des liens externes
- Connectivity Plus pour la gestion de la connectivité réseau
- Cached Network Image pour le chargement optimisé des images

## 📂 Structure du projet

```
lib/
├── app.dart                  # Point d'entrée de l'application
├── main.dart                 # Configuration initiale
├── navigation_menu.dart      # Menu de navigation principal
├── bindings/                 # Injection de dépendances
├── common/                   # Widgets et styles communs
├── data/                     # Couche de données
│   ├── repositories/         # Repositories pour l'accès aux données
│   └── services/             # Services pour les opérations externes
├── features/                 # Modules fonctionnels
│   ├── authentification/     # Authentification (login, signup, etc.)
│   ├── personalization/      # Personnalisation (profil, paramètres)
│   └── shop/                 # Fonctionnalités de la boutique
├── routes/                   # Configuration des routes
└── utils/                    # Utilitaires
    ├── constants/            # Constantes (couleurs, tailles, textes)
    ├── helpers/              # Fonctions d'aide
    ├── theme/                # Configuration des thèmes
    └── validators/           # Validation des formulaires
```

## 🚀 Installation

1. Clonez le dépôt :
   ```bash
   git clone https://github.com/A-Hamdi1/PingoStoreFlutter.git
   ```

2. Accédez au répertoire du projet :
   ```bash
   cd PingoStoreFlutter
   ```

3. Installez les dépendances :
   ```bash
   flutter pub get
   ```

4. Exécutez l'application :
   ```bash
   flutter run
   ```

## 📱 Plateformes supportées

- Android
- iOS
- Web
- macOS
- Linux
- Windows

## 🔧 Configuration

Pour utiliser Firebase, vous devez configurer votre propre projet Firebase et remplacer les fichiers de configuration :

1. Créez un projet sur [Firebase Console](https://console.firebase.google.com/)
2. Ajoutez les applications (Android, iOS, Web) à votre projet Firebase
3. Téléchargez et remplacez les fichiers de configuration


## 📞 Contact

Pour toute question ou suggestion, n'hésitez pas à me contacter :
- Email : hamdi.akram.dev@gmail.com

---

⭐️ N'hésitez pas à donner une étoile à ce projet si vous l'avez trouvé utile ! ⭐️
