Need the following env vars set (full path on the system):
configs = .
`WEZTERM_CONFIG_FILE` = ./wezterm/.wezterm.lua
`GLAZEWM_CONFIG_PATH` = ./glazewm/.glzr/glazewm/config.yaml
`ZEBAR_CONFIG_DIR` = ./glazewm/.glzr/zebar
`XDG_CONFIG_DIR` = %configs%

Install terminal icons:
`Install-Module -Name Terminal-Icons -Repository PSGallery`

And place this somewhere in your PowerShell profile chain, e.g., in `$profile`:
Put these two in your PowerShell profile chain somewhere:

(turns on terminal icons)
`Import-Module -Name Terminal-Icons`

(new panes keep working directory)
`
function prompt {
    $p = $executionContext.SessionState.Path.CurrentLocation
    $osc7 = ""
    if ($p.Provider.Name -eq "FileSystem") {
        $ansi_escape = [char]27
        $provider_path = $p.ProviderPath -Replace "\\", "/"
        $osc7 = "$ansi_escape]7;file://${env:COMPUTERNAME}/${provider_path}${ansi_escape}\"
    }
    "${osc7}PS $p$('>' * ($nestedPromptLevel + 1)) ";
}
`

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

ADD TO CONFIG REPO:
* ReadMe? Specify which environment variables to set

