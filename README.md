# Flutter Widgets Explorer

> Une mini application Flutter conçue pour explorer et pratiquer les widgets de base appris jusqu'à présent.

## 🎯 Objectif
Ce projet est un exercice pratique dans le cadre de ma formation Flutter.  
Il me permet de manipuler les widgets fondamentaux de Flutter à travers un petit projet multi-pages.

---

## 📌 Widgets appris et utilisés

### 🏗 Structure
- `Scaffold` : Structure de base d’une page
- `AppBar` : Barre d’application en haut
- `FloatingActionButton` + `FloatingActionButtonLocation`
- `BottomNavigationBar` : Navigation par onglets
- `Drawer` : Menu latéral

### 🔘 Boutons
- `ElevatedButton`
- `OutlinedButton`
- `IconButton`
- `TextButton`

### 🎨 Icônes
- Icônes Material Design (`Icons`)
- Icônes FontAwesome

### 🖼 Images
- `Image.asset` (depuis les fichiers locaux)
- `Image.network` (depuis internet)

### ✍ Texte
- `Text`
- Mise en forme du texte
- Choix de la police
- Google Fonts (`google_fonts`)

### 📏 Layouts
- `Center`
- `Column`
- `Row`
- `Expanded`
- `Container`
- `Padding`
- `Divider`

### 📜 Widgets interactifs
- `Stepper`
- `SnackBar`
- `AlertDialog`

### 🔀 Navigation
- `Navigator.push`
- `Navigator.pop`
- `Navigator.pushNamed`

---

## 📂 Aperçu des pages

1. **Accueil**
   - Présentation des boutons (Elevated, Outlined, Icon, Text)
   - Utilisation d’icônes (Material + FontAwesome)
   - Image locale et en ligne
   - Texte avec Google Fonts

2. **Layout**
   - Dispositions avec `Column`, `Row`, `Expanded`
   - `Container` stylisé avec `Padding`
   - Séparateurs avec `Divider`

3. **Interaction**
   - `Stepper` pour illustrer des étapes
   - `SnackBar` et `AlertDialog`
   - Navigation entre plusieurs pages (`push`, `pop`, `pushNamed`)

---

## ▶️ Lancer le projet

```bash
flutter pub get
flutter run
