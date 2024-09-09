# 🌿 Ivy Auto Builder

**Ivy Auto Builder** is a lightweight script that allows you to quickly set up your development environment directly from your terminal by simply typing `ivy`. You can select between different development setups like HTML/CSS/JavaScript, Python, or TypeScript, and it will automatically create the required folders and files, install the necessary packages, and open VS Code to get you started. All in one command!

## 🚀 Features

- **Quick Setup** for HTML/CSS/JS, JavaScript, Python, and TypeScript projects.
- Automatically installs necessary packages with **bun** or **pip**.
- Emojis in the selection menu for a nice visual touch! 🌟
- Automatically opens **VS Code** once the setup is complete.
  
## 📦 Requirements

- **Windows PowerShell**
- **bun** (for Node.js/TypeScript projects) - [Install bun](https://bun.sh)
- **VS Code** - [Download VS Code](https://code.visualstudio.com/)
- **Python** (for Python projects) - [Download Python](https://www.python.org/downloads/)

## 📥 Installation

1. **Clone this repository** to your local machine:
   ```bash
   git clone https://github.com/ivy-js/ivy-auto-builder.git
   ```

2. **Move the script to a directory in your `PATH`** so that you can run it globally. For example, copy `ivy.ps1` to a folder like `C:\Scripts`, and then add this folder to your system's PATH.

3. **Run PowerShell as an Administrator** and enable the execution of PowerShell scripts:
   ```powershell
   Set-ExecutionPolicy RemoteSigned
   ```

4. **You're all set!** Just type `ivy` in your PowerShell terminal to start using Ivy Auto Builder.

## 🛠️ Usage

1. Open **PowerShell** in the directory where you want to create your project.
   
2. Type `ivy` and press **Enter**.
   
3. You will see a loading screen with your GitHub info, followed by a selection menu:

   ```text
   > 📄 Html / Css / Js
     💻 JavaScript
     🐍 Python
     📜 TypeScript
   ```

4. Use the **arrow keys** to navigate between options and **Enter** to select.

5. For **JavaScript** and **TypeScript** projects, you can input the **Node.js modules** you need:
   ```text
   Which node modules do you need? (separated by spaces): axios express mongoose
   ```

6. For **Python**, input the **Python modules** you need:
   ```text
   Which Python modules do you need? (separated by spaces): requests flask numpy
   ```

7. The script will create the necessary folders and files, install the required packages, and automatically launch **VS Code** for you.

## 📝 Example

```bash
➜ ivy
Loading Ivy Auto Builder...
GitHub: https://github.com/ivy-js

Select your environment:
  > 📄 Html / Css / Js
    💻 JavaScript
    🐍 Python
    📜 TypeScript

Installing packages...
```

## 💻 Development Environments Supported

- **HTML/CSS/JS**: Automatically creates `public/`, `public/css/`, and `js/` folders and an `index.html` file.
- **JavaScript**: Prompts for Node.js modules, installs them via **bun**, creates `main.js`, and initializes a new Node project.
- **Python**: Prompts for Python modules and installs them via **pip**, and creates `main.py`.
- **TypeScript**: Prompts for Node.js modules, installs them via **bun**, creates `main.ts`, and initializes a new Node project.

## 🔗 Links

- [Official Website of bun](https://bun.sh)
- [Download Python](https://www.python.org/downloads/)
- [Download VS Code](https://code.visualstudio.com/)

---

🔍 Français [readme-french.md](./readme-french.md)

---
