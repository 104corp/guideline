# Git 操作規範與建議

## .gitignore 建議

**建議**下面這些暫存檔都可以加入 `.gitignore` 檔裡，並寫註解方便未來參考。

```ignore
# Global/Temp.gitignore
*~
*.swp

# Global/OSX.gitignore
.DS_Store

# Thumbnails
._*

# Files that might appear on external disk
.Spotlight-V100
.Trashes

# Global/Windows.gitignore
Thumbs.db
Desktop.ini

# NetBeans project files
nbproject/*

# IntelliJ IDEA project files
.idea

# Eclipse project files
.project
.buildpath
.settings
```
