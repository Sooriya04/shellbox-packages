feat: initialize ShellBox package repository with runtime support

- Create core registry structure with hello-world test package
- Add Python 3.11 standalone runtime package
- Add Node.js 24 package with dynamic NVM installation
- Implement package metadata via package.json
- Add install.sh and remove.sh automation scripts
- Configure .gitignore and project README
- Initialize repository for Git version control
- Ensure compatibility with Android PackageRepository.kt

feat: add nano 7.2 package

- Create `packages/nano` structure with `package.json`
- Implement `install.sh` for automated nano 7.2 build from source
- Add `remove.sh` for package uninstallation
- Register nano 7.2 in global `index.json`
