ANeed the following env vars set (full path on the system):
configs = .
`WEZTERM_CONFIG_FILE` = ./wezterm/.wezterm.lua
`GLAZEWM_CONFIG_PATH` = ./glazewm/.glzr/glazewm/config.yaml
`ZEBAR_CONFIG_DIR` = ./glazewm/.glzr/zebar
`XDG_CONFIG_HOME` = %configs%

Path to brave.exe should be on PATH. To use a different browser, change the
alt+b mapping in glaze's config.yaml

install IosevkaCustomClike font by dragging all the TTFs into the area
specified in Windows font settings.
The regular IosevkaCustom uses Haskell ligations which displays /= as not equal.
The build plan in fonts changes ligations to clike.

install PowerToys and apply the settings backup file

Add location of Launch-VsDevShell.ps1 to PATH. Call it when you want to use `cl`
e.g., C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\Tools

### Terminal-Icons

#### Install:
`Install-Module -Name Terminal-Icons -Repository PSGallery`

#### Add custom icon theme:
Edit `$Env:configs\terminal-icons\devblackops_custom.psd1` to your liking (or
add an entirely new theme).

`Add-TerminalIconsIconTheme "$Env:configs\terminal-icons\devblackops_custom.psd1"`

Run `Get-TerminalIconsIconTheme`, ensure `devblackops_custom` is listed.

`Set-TerminalIconsTheme -IconTheme "devblackops_custom"`

You can do the same customization with colors if you want.

### Oh My Posh (prompt theme engine)

Install oh my posh (prompt theme engine):
(NOTE: Oh My Posh will break new panes copying the working directory for now, I
need to figure out how to integrate osc7 between wez and OMP)
`winget install JanDeDobbeleer.OhMyPosh -s winget`

### Powershell Profile
Put `profile.ps1` somewhere on your PowerShell profile path (e.g., at $profile)

### Wezterm and GWM notes
CTRL is for wezterm movement (except CTRL+[T/W] for tabs)
CTRL+ALT is for wezterm creation/destruction
ALT is for gwm
(generally)

HJKL:
wez: focus pane
gwm: focus window

<shift>HJKL:
wez: resize 
gwm: resize

HJKL:
wez: split pane

;:
wez: rotate panes (<shift> for bckwd)

UIOP:
gwm: move window

CTRL+T wez new tab
CTRL+Q wez close tab
CTRL+W wez close pane

alt+shift+{1-9} gwm move window to workspace
alt+q gwm close window
alt+r gwm reload config

CTRL+SHIFT+r wez reload config, but it happens automatically

OFF LIMITS:
Alt+T  (keep as toggle mode)
Ctrl+T (bc of tag stack)
Alt+F  (keep as fullscreen mode)

TODO:
* Set PowerShell `$profile` directly from config directory. 

