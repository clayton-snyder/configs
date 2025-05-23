## A rough mapping of color semantics:
# human readable data - denim 00BFFF
# binary/not human readable data (zip, bundles, etc) - gold DAA520
# special data files (keys, certs, fonts, etc) - tomato CD5C5C
# config - yellow FFD700
# primary source - brightblue 00FBFF
# secondary source (html, xml, md, etc.) - blue 2535F9
# binaries - brightgreen 00FA9A
# scripts - red FF4500
# artifacts - gray A9A9A9

@{
    Name  = 'cs-basic'
    Types = @{
        Directories = @{
            symlink  = '7373ff'
            junction = '7373ff'
            WellKnown = @{
                desktop                 = '00FBFF'
                src                     = '00FBFF'
                bin                     = '00FA9A'
                '.config'               = '87CEAF'
                '.cache'                = '87ECAF'
                '.vscode'               = '87CEFA'
                '.vscode-insiders'      = '24BFA5'
                '.git'                  = 'FF4500'
                'node_modules'          = '6B8E23'
            }
        }
        Files = @{
            symlink  = '7373ff'
            junction = '7373ff'
            WellKnown = @{
                '.gitattributes'                = 'FFD700'
                '.gitconfig'                    = 'FFD700'
                '.gitignore'                    = 'FFD700'
                '.gitmodules'                   = 'FFD700'
                '.gitkeep'                      = 'FFD700'
                'git-history'                   = 'FF4500'
                '.DS_Store'                     = '696969'
                '.tsbuildinfo'                  = 'F4A460'
                '.jscsrc'                       = 'F4A460'
                '.jshintrc'                     = 'F4A460'
                '.jsbeautifyrc'                 = 'F4A460'
                '.esformatter'                  = 'F4A460'
                '.htaccess'                     = 'FFD700'
                '.jshintignore'                 = 'FFD700'
                '.buildignore'                  = 'FFD700'
                '.mrconfig'                     = 'FFD700'
                '.yardopts'                     = 'FFD700'
                '.clang-format'                 = 'FFD700'
                '.clang-tidy'                   = 'FFD700'
                '.travis.yml'                   = 'FFD700'
                '.gitlab-ci.yml'                = 'FFD700'
                '.jenkinsfile'                  = 'FFD700'
                'jenkinsfile'                   = 'FFD700'
                'makefile'                      = '6495ED'


                # NodeJS
                '.nvmrc'                        = 'FFD700'
                '.esmrc'                        = 'FFD700'

                # NPM
                '.nmpignore'                    = 'FFD700'
                '.npmrc'                        = 'FFD700'

                # Authors
                'authors'                       = '00BFFF'
            }
            # Archive files
            '.7z'                   = 'DAA520'
            '.bz'                   = 'DAA520'
            '.tar'                  = 'DAA520'
            '.zip'                  = 'DAA520'
            '.gz'                   = 'DAA520'
            '.xz'                   = 'DAA520'
            '.br'                   = 'DAA520'
            '.bzip2'                = 'DAA520'
            '.gzip'                 = 'DAA520'
            '.brotli'               = 'DAA520'
            '.rar'                  = 'DAA520'
            '.tgz'                  = 'DAA520'

            # Executable things
            '.bat'                  = 'FF4500'
            '.cmd'                  = 'FF4500'
            '.exe'                  = '00FA9A'
            '.pl'                   = 'FF4500'

            '.sh'                   = 'FF4500'

            # App Packages
            '.msi'                  = 'DAA520'
            '.msix'                 = 'DAA520'
            '.msixbundle'           = 'DAA520'
            '.appx'                 = 'DAA520'
            '.AppxBundle'           = 'DAA520'
            '.deb'                  = 'DAA520'
            '.rpm'                  = 'DAA520'

            # PowerShell
            '.ps1'                  = 'FF4500'
            '.psm1'                 = 'FF4500'
            '.psd1'                 = '00BFFF'
            '.ps1xml'               = '00BFFF'
            '.psc1'                 = '00BFFF'
            '.pssc'                 = '00BFFF'

            # Javascript
            '.js'                   = '00FBFF'
            '.esx'                  = '00FBFF'
            '.mjs'                  = '00FBFF'

            # Java
            '.java'                 = '00FBFF'
            '.jar'                  = 'DAA520'

            '.gradle'               = 'FFD700'

            # Python
            '.py'                   = 'FF4500'
            '.ipynb'                = '00BFFF'


            # React
            '.jsx'                  = '00FBFF'
            '.tsx'                  = '00FBFF'

            # Typescript
            '.ts'                   = '00FBFF'

            # Not-executable code files
            '.dll'                  = 'DAA520'

            # Importable Data files
            '.clixml'               = '00BFFF'
            '.csv'                  = '00BFFF'
            '.tsv'                  = '00BFFF'

            # Settings
            '.ini'                  = 'FFD700'
            '.dlc'                  = 'FFD700'
            '.config'               = 'FFD700'
            '.conf'                 = 'FFD700'
            '.properties'           = 'FFD700'
            '.prop'                 = 'FFD700'
            '.settings'             = 'FFD700'
            '.option'               = 'FFD700'
            '.reg'                  = 'FFD700'
            '.props'                = 'FFD700'
            '.toml'                 = 'FFD700'
            '.prefs'                = 'FFD700'
            '.sln.dotsettings'      = 'FFD700'
            '.sln.dotsettings.user' = 'FFD700'
            '.cfg'                  = 'FFD700'

            # Source Files
            '.c'                    = '00FBFF'
            '.h'                    = '00FBFF'
            '.cpp'                  = '00FBFF'
            '.cxx'                  = '00FBFF'
            '.c++'                  = '00FBFF'
            '.go'                   = '00FBFF'
            '.php'                  = '00FBFF'

            # Artifacts
            '.obj'                  = 'A9A9A9'

            # Visual Studio
            '.csproj'               = 'FFD700'
            '.ruleset'              = 'FFD700'
            '.sln'                  = 'FFD700'
            '.slnf'                 = 'FFD700'
            '.suo'                  = 'FFD700'
            '.vb'                   = 'FFD700'
            '.vbs'                  = 'FFD700'
            '.vcxitems'             = 'FFD700'
            '.vcxitems.filters'     = 'FFD700'
            '.vcxproj'              = 'FFD700'
            '.vsxproj.filters'      = 'FFD700'

            # CSharp
            '.cs'                   = '00FBFF'
            '.csx'                  = '00FBFF'

            # Haskell
            '.hs'                   = '00FBFF'

            # XAML
            '.xaml'                 = '2535F9'

            # Rust
            '.rs'                   = '00FBFF'

            # Database
            '.pdb'                  = 'DAA520'
            '.sql'                  = '2535F9'
            '.pks'                  = 'FFD700'
            '.pkb'                  = 'FFD700'
            '.accdb'                = 'FFD700'
            '.mdb'                  = 'FFD700'
            '.sqlite'               = 'FFD700'
            '.pgsql'                = 'FFD700'
            '.postgres'             = 'FFD700'
            '.psql'                 = 'FFD700'
            '.db'                   = 'FFD700'

            # Source Control
            '.patch'                = '00BFFF'

            # Project files
            '.user'                 = 'FFD700'
            '.code-workspace'       = 'FFD700'

            # Text data files
            '.log'                  = '00BFFF'
            '.txt'                  = '00BFFF'

            # HTML/css
            '.html'                 = '2535F9'
            '.htm'                  = '2535F9'
            '.xhtml'                = '2535F9'
            '.html_vm'              = '2535F9'
            '.asp'                  = '2535F9'
            '.css'                  = '2535F9'
            '.sass'                 = '2535F9'
            '.scss'                 = '2535F9'
            '.less'                 = '2535F9'

            # Markdown
            '.md'                   = '2535F9'
            '.markdown'             = '2535F9'
            '.rst'                  = '2535F9'

            # JSON
            '.json'                 = 'FFD700'
            '.tsbuildinfo'          = 'FFD700'

            # YAML
            '.yml'                  = 'FFD700'
            '.yaml'                 = 'FFD700'

            # LUA
            '.lua'                  = '00FBFF'

            # XML
            '.xml'                  = '2535F9'
            '.plist'                = '2535F9'
            '.xsd'                  = '2535F9'
            '.dtd'                  = '2535F9'
            '.xsl'                  = '2535F9'
            '.xslt'                 = '2535F9'
            '.resx'                 = '2535F9'
            '.iml'                  = '2535F9'
            '.xquery'               = '2535F9'
            '.tmLanguage'           = '2535F9'
            '.manifest'             = '2535F9'
            '.project'              = '2535F9'

            # Audio
            '.mp3'                  = 'DB7093'
            '.flac'                 = 'DB7093'
            '.m4a'                  = 'DB7093'
            '.wma'                  = 'DB7093'
            '.aiff'                 = 'DB7093'
            '.wav'                  = 'DB7093'
            '.aac'                  = 'DB7093'
            '.opus'                 = 'DB7093'

            # Images
            '.png'                  = '20B2AA'
            '.jpeg'                 = '20B2AA'
            '.jpg'                  = '20B2AA'
            '.gif'                  = '20B2AA'
            '.ico'                  = '20B2AA'
            '.tif'                  = '20B2AA'
            '.tiff'                 = '20B2AA'
            '.psd'                  = '20B2AA'
            '.psb'                  = '20B2AA'
            '.ami'                  = '20B2AA'
            '.apx'                  = '20B2AA'
            '.bmp'                  = '20B2AA'
            '.bpg'                  = '20B2AA'
            '.brk'                  = '20B2AA'
            '.cur'                  = '20B2AA'
            '.dds'                  = '20B2AA'
            '.dng'                  = '20B2AA'
            '.eps'                  = '20B2AA'
            '.exr'                  = '20B2AA'
            '.fpx'                  = '20B2AA'
            '.gbr'                  = '20B2AA'
            '.jbig2'                = '20B2AA'
            '.jb2'                  = '20B2AA'
            '.jng'                  = '20B2AA'
            '.jxr'                  = '20B2AA'
            '.pbm'                  = '20B2AA'
            '.pgf'                  = '20B2AA'
            '.pic'                  = '20B2AA'
            '.raw'                  = '20B2AA'
            '.webp'                 = '20B2AA'
            '.svg'                  = 'F4A460'

            # Video
            '.webm'                 = 'FFA500'
            '.mkv'                  = 'FFA500'
            '.flv'                  = 'FFA500'
            '.vob'                  = 'FFA500'
            '.ogv'                  = 'FFA500'
            '.ogg'                  = 'FFA500'
            '.gifv'                 = 'FFA500'
            '.avi'                  = 'FFA500'
            '.mov'                  = 'FFA500'
            '.qt'                   = 'FFA500'
            '.wmv'                  = 'FFA500'
            '.yuv'                  = 'FFA500'
            '.rm'                   = 'FFA500'
            '.rmvb'                 = 'FFA500'
            '.mp4'                  = 'FFA500'
            '.mpg'                  = 'FFA500'
            '.mp2'                  = 'FFA500'
            '.mpeg'                 = 'FFA500'
            '.mpe'                  = 'FFA500'
            '.mpv'                  = 'FFA500'
            '.m2v'                  = 'FFA500'

            # Certifactes
            '.cer'                  = 'CD5C5C'
            '.cert'                 = 'CD5C5C'
            '.crt'                  = 'CD5C5C'
            '.pfx'                  = 'CD5C5C'

            # Keys
            '.pem'                  = 'CD5C5C'
            '.pub'                  = 'CD5C5C'
            '.key'                  = 'CD5C5C'
            '.asc'                  = 'CD5C5C'
            '.gpg'                  = 'CD5C5C'

            # Fonts
            '.woff'                 = 'CD5C5C'
            '.woff2'                = 'CD5C5C'
            '.ttf'                  = 'CD5C5C'
            '.eot'                  = 'CD5C5C'
            '.suit'                 = 'CD5C5C'
            '.otf'                  = 'CD5C5C'
            '.bmap'                 = 'CD5C5C'
            '.fnt'                  = 'CD5C5C'
            '.odttf'                = 'CD5C5C'
            '.ttc'                  = 'CD5C5C'
            '.font'                 = 'CD5C5C'
            '.fonts'                = 'CD5C5C'
            '.sui'                  = 'CD5C5C'
            '.ntf'                  = 'CD5C5C'
            '.mrg'                  = 'CD5C5C'


            # VSCode
            '.vscodeignore'         = 'FFD700'
            '.vsixmanifest'         = 'FFD700'
            '.vsix'                 = 'FFD700'
            '.code-workplace'       = 'FFD700'

            '.lock'                 = 'A9A9A9'

            # Disk Image
            '.vmdk'                 = 'CD5C5C'
            '.vhd'                  = 'CD5C5C'
            '.vhdx'                 = 'CD5C5C'
            '.img'                  = 'CD5C5C'
            '.iso'                  = 'CD5C5C'
        }
    }
}