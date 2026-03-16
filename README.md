# ShellBox Packages

A central repository for community and official packages compatible with the **ShellBox** (DexTerminal) Android environment.

## 📦 Available Packages

| Package | Version | Description |
| :--- | :--- | :--- |
| `hello` | 1.0.0 | A simple "Hello World" test package. |
| `python` | 3.11.0 | Python 3.11 standalone runtime. |
| `nodejs` | 24.0.0 | Node.js v24 runtime (installed via NVM). |

## 🚀 How to use

To use these packages in your ShellBox terminal, ensure your `pm` (Package Manager) is pointed to this repository.

### Commands:
```bash
pm update           # Synchronize package registry
pm install <name>   # Install a package (e.g., nodejs)
pm remove <name>    # Uninstall a package
```

## 🛠 Contributing
Feel free to submit Pull Requests with new package definitions. Each package folder must contain:
1. `package.json` - Metadata and dependencies
2. `install.sh` - Installation logic
3. `remove.sh` - Cleanup logic
