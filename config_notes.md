Need the following env vars set (full path on the system):
configs = .
`WEZTERM_CONFIG_FILE` = ./wezterm/.wezterm.lua
`GLAZEWM_CONFIG_PATH` = ./glazewm/.glzr/glazewm/config.yaml
`ZEBAR_CONFIG_DIR` = ./glazewm/.glzr/zebar
`XDG_CONFIG_DIR` = %configs%

Install terminal icons:
`Install-Module -Name Terminal-Icons -Repository PSGallery`

Install oh my posh (prompt theme engine):
(NOTE: Oh My Posh will break new panes copying the working directory for now, I
need to figure out how to integrate osc7 between wez and OMP)
`winget install JanDeDobbeleer.OhMyPosh -s winget`

Put `profile.ps1` somewhere on your PowerShell profile path (e.g., at $profile)

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

