@{
    Name  = 'cs-basic'
    Types = @{
        Directories = @{
            # Default directory icon
            ''        = 'nf-oct-file_directory'
            symlink   = 'nf-cod-file_symlink_directory'
            junction  = 'nf-fa-external_link'
            WellKnown = @{
            }
        }

        Files       = @{
            # Default file icon
            ''        = 'nf-fa-file'
            symlink   = 'nf-oct-file_symlink_file'
            junction  = 'nf-fa-external_link'
            WellKnown               = @{
            }
        }
    }
}
