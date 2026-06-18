# Colby VSCode Setup

## Files

- [`keybindings.json`](./keybindings.json) — my custom VS Code keybindings

## Instructions macOS

### 1. Install VSCodeVim
Enables Vim mode in VS Code

Install the [VSCodeVim extension](https://marketplace.visualstudio.com/items?itemName=vscodevim.vim).

Or from VS Code:

- Press `Cmd+Shift+P`
- Type `Extensions: Install Extensions`
- Search for `Vim`
- Install **VSCodeVim** by `vscodevim`

### 2. Open VS Code keybindings

- Press `Cmd+Shift+P`
- Type and Select **`Preferences: Open Keyboard Shortcuts (JSON)`**

> ⚠️ Do **not** select **Preferences: Open Default Keyboard Shortcuts (JSON)**.  
> That file is read-only and cannot be edited.

### 3. Paste keybindings

- Open and Copy contents of [`keybindings.json`](./keybindings.json)
- Paste it into the VS Code `keybindings.json` file
- Save

### 4. Enable relative line numbers

- Press `Cmd+Shift+P`
- Type and Select **`Preferences: Open User Settings (JSON)`**
- Add or update this setting:

```json
"editor.lineNumbers": "relative"
```
- Save

> ⚠️ Do **not** replace the whole `settings.json`; just add or update this one line.

Done.
