
function setup_terminal_tweaks {
    
    # Make bash tab completion ignore SVN directories
    # http://blog.pclewis.com/2010/03/tip-make-bash-tab-completion-ignore-svn-directories/
    export FIGNORE=.svn 

    # I like this simple prompt
    export PS1="\W $ "

    # vi like navigation of command line.
    set -o vi 

    # default editor is vim
    export EDITOR=vim


}

function setup_general_aliases {

    alias clean="rm -f *~;rm -f .*~;rm -f '#'*;rm -rf .*.swp;rm -rf .'#'*"
    alias screen='screen -RD'
    alias killeverything='for x in `jobs -p`; do kill -9 $x; done'
    alias rm="rm -iv" # warn before removing & verbose
    alias mv="mv -fi"
    alias cp="cp -afi"
    alias l="ls -color" # print out size next to each of them
    alias duh='du -h --max-depth=1' # human readable and not recursive
    alias grep='grep -i'

    alias tarup="echo tar -czvf MyArchive.tgz Source_folder"
    alias untar="echo tar -xzvf MyArchive.tgz"

    alias sng="sed 's/:/\n/g'"
}

function setup_defaults {
    setup_terminal_tweaks
    setup_general_aliases
}
setup_defaults
