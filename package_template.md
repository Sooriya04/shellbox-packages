# Package Repository Checklist

To test your `pm` manager, create these files in your GitHub repository:

## 1. Root Directory
Create [inpm.json](file:///home/sooriya/.gemini/antigravity/brain/9761cb70-82ec-432f-a9d9-d80faf29be21/inpm.json) with this content:
```json
{
  "packages": {
    "hello": {
      "version": "1.0.0",
      "path": "packages/hello"
    }
  }
}
```

## 2. Package Directory (`packages/hello/`)
Create these three files inside a folder named `packages/hello/`:

### `package.json`
```json
{
  "name": "hello",
  "version": "1.0.0",
  "description": "A simple test package",
  "license": "MIT",
  "homepage": "https://github.com/your-username/your-repo",
  "dependencies": []
}
```

### `install.sh`
```bash
#!/usr/bin/env bash
echo "Installing hello world test..."
echo "Hello from ShellBox!" > "${PREFIX}/bin/hello"
chmod +x "${PREFIX}/bin/hello"
echo "Installation complete."
```

### `remove.sh` (Optional)
```bash
#!/usr/bin/env bash
echo "Removing hello world test..."
rm "${PREFIX}/bin/hello"
```

## 3. How to Link
Once pushed, copy your **GitHub Username** and **Repo Name**, then we will update [PackageRepository.kt](file:///home/sooriya/workspace/DexTerminal/app/src/main/java/com/dex/terminal/dex/PackageRepository.kt) to point to it!
