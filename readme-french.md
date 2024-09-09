# 🌿 Ivy Auto Builder

**Ivy Auto Builder** est un script léger qui te permet de configurer rapidement ton environnement de développement directement depuis ton terminal en tapant simplement `ivy`. Tu peux sélectionner différents environnements comme HTML/CSS/JavaScript, Python ou TypeScript, et il créera automatiquement les dossiers et fichiers nécessaires, installera les paquets requis, et ouvrira VS Code pour démarrer. Tout en une seule commande !

## 🚀 Fonctionnalités

- **Configuration rapide** pour les projets HTML/CSS/JS, JavaScript, Python, et TypeScript.
- Installe automatiquement les paquets nécessaires avec **bun** ou **pip**.
- 🎨 Affiche un écran de chargement cool avec ton lien GitHub lorsque le builder se lance.
- Des émojis dans le menu de sélection pour une touche visuelle sympa ! 🌟
- Ouvre automatiquement **VS Code** une fois la configuration terminée.
  
## 📦 Prérequis

- **Windows PowerShell**
- **bun** (pour les projets Node.js/TypeScript) - [Installer bun](https://bun.sh)
- **VS Code** - [Télécharger VS Code](https://code.visualstudio.com/)
- **Python** (pour les projets Python) - [Télécharger Python](https://www.python.org/downloads/)

## 📥 Installation

1. **Clone ce dépôt** sur ta machine locale :
   ```bash
   git clone https://github.com/ivy-js/ivy-auto-builder.git
   ```

2. **Déplace le script dans un répertoire de ton `PATH`** pour pouvoir l’exécuter globalement. Par exemple, copie `ivy.ps1` dans un dossier comme `C:\Scripts`, puis ajoute ce dossier à ton `PATH` système.

3. **Lance PowerShell en tant qu'administrateur** et active l'exécution des scripts PowerShell :
   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

4. **C'est tout !** Il te suffit de taper `ivy` dans ton terminal PowerShell pour commencer à utiliser Ivy Auto Builder.

## 🛠️ Utilisation

1. Ouvre **PowerShell** dans le répertoire où tu souhaites créer ton projet.
   
2. Tape `ivy` et appuie sur **Entrée**.
   
3. Un écran de chargement avec ton info GitHub apparaîtra, suivi d'un menu de sélection :

   ```text
   > 📄 Html / Css / Js
     💻 JavaScript
     🐍 Python
     📜 TypeScript
   ```

4. Utilise les **flèches** pour naviguer entre les options et **Entrée** pour sélectionner.

5. Pour les projets **JavaScript** et **TypeScript**, tu peux entrer les **modules Node.js** dont tu as besoin :
   ```text
   De quels modules Node.js as-tu besoin ? (séparés par des espaces) : axios express mongoose
   ```

6. Pour **Python**, entre les **modules Python** dont tu as besoin :
   ```text
   De quels modules Python as-tu besoin ? (séparés par des espaces) : requests flask numpy
   ```

7. Le script créera les dossiers et fichiers nécessaires, installera les paquets requis, et lancera automatiquement **VS Code**.

## 📝 Exemple

```bash
➜ ivy
Chargement de Ivy Auto Builder...
GitHub : https://github.com/ivy-js

Choisis ton environnement :
  > 📄 Html / Css / Js
    💻 JavaScript
    🐍 Python
    📜 TypeScript

Installation des paquets...
```

## 💻 Environnements de développement pris en charge

- **HTML/CSS/JS** : Crée automatiquement les dossiers `public/`, `public/css/`, et `js/` ainsi qu'un fichier `index.html`.
- **JavaScript** : Demande les modules Node.js, les installe via **bun**, crée un fichier `main.js`, et initialise un nouveau projet Node.
- **Python** : Demande les modules Python et les installe via **pip**, et crée un fichier `main.py`.
- **TypeScript** : Demande les modules Node.js, les installe via **bun**, crée un fichier `main.ts`, et initialise un nouveau projet Node.

## 🔗 Liens

- [Site officiel de bun](https://bun.sh)
- [Télécharger Python](https://www.python.org/downloads/)
- [Télécharger VS Code](https://code.visualstudio.com/)

---

