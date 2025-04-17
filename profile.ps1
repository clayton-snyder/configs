# Re-map prev/next command to Ctrl+[p/n] because arrows are hard to press. Also
# adds prefix searching.
Set-PSReadLineKeyHandler -Chord Ctrl+p -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Chord Ctrl+n -Function HistorySearchForward

function prompt {
    $p = $executionContext.SessionState.Path.CurrentLocation
    $osc7 = ""
    if ($p.Provider.Name -eq "FileSystem") {
        $esc = [char]27
        $path = $p.ProviderPath -Replace "\\", "/"
        $osc7 = "$esc]7;file://${env:COMPUTERNAME}/${path}${esc}\"
    }
    # Purple date/time, green curr dir, newline, yellow bold intense caret.
    # See ansi color codes and escape sequences for how to format this.
    "${osc7}$esc[35m$(Get-Date -Format "MM-dd HH:mm:ss")$esc[0m $esc[32m$p$esc[1;93m$([char]13 + [char]10 + '>' * ($nestedPromptLevel + 1)) $esc[0m";
}

# Might be worth modifying these, some of them are annoying (like a folder
# called "Fonts" having a font icon; it's a folder, just show a folder!").
Import-Module -Name Terminal-Icons

# Oh My Posh is cool but I'm disabling it until a time that I find it more 
# useful because I need to do some work to figure out how to set the current
# working directory for new wezterm panes. Doesn't work OOB.
# oh-my-posh init pwsh | Invoke-Expression
