" Joshua Lande's custom vim configurations
"
" Enable vim enhancements not compatable with vi
set nocompatible

" For the most accurate but slowest result, set the syntax
" synchronization method to fromstart. This can be done with an autocmd
" in your vimrc:
" (http://vim.wikia.com/wiki/Fix_syntax_highlighting)
autocmd BufEnter * :syntax sync fromstart

" The 'scrolloff' (scroll offset) option determines the minimum number
" of screen lines that you would like above and below the cursor. By
" default, 'scrolloff' is 0 which means that you can move the cursor
" to any line in the window without causing scrolling.
" (http://vim.wikia.com/wiki/Make_search_results_appear_in_the_middle_of_the_screen)
:set scrolloff=5

" show matching brackets
" The showmatch option is also useful: it can reduce the need for %,
" the cursor will briefly jump to the matching brace when you insert
" one.
set showmatch 

" Nice looking status line
set statusline=%F%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L]

" To tell Vim that you would like to have a real status line shown,
" you have to add the following setting to your vimrc file. This
" command will make sure that your status line is always shown as
" the second last line in the editor window:
" (http://archive09.linux.com/feature/120126)
set laststatus=2

" It hides buffers instead of closing them. This means that you can
" have unwritten changes to a file and open a new file using :e,
" without being forced to write or undo your changes first. Also,
" undo buffers and marks are preserved while the buffer is open.
" (http://usevim.com/2012/10/19/vim101-set-hidden/)
set hidden

" Backspace works in Insert mode (e.g. not inserting a ^?), but won't
" delete over line breaks, or automatically-inserted indentation, or
" the place where insert mode started. This make backspace work like
" most other apps
" (http://vim.wikia.com/wiki/Backspace_and_delete_problems)
set backspace=2

" Turn on syntax highlighting by default
" (http://www.cyberciti.biz/faq/turn-on-or-off-color-syntax-highlighting-in-vi-or-vim/)
syntax on

" don't wrap lines
" (http://vimdoc.sourceforge.net/htmldoc/usr_05.html)
set nowrap

" nostartofline tells VIM during motion commands to try to preserve
" column where cursor is positioned.
" (http://vimrc-dissection.blogspot.com/2009/02/fixing-pageup-and-pagedown.html)
set nostartofline

" What Vim considers part of a filename is controlled by the 'isfname'
" option. Removing the comma and equals from from the isfname allows
" for filename completion in commands like COMMAND=/file/name
" (http://superuser.com/questions/598270/getting-rid-of-characters-when-doing-gf-in-vim)
set isfname-== 
set isfname-=,

" By default, searching starts after you enter the string. With this option
" incremental searches will be done. 
" (http://www.oualline.com/vim/10/top_10.html)
set incsearch

" Automatically indent as you type
" (http://www.serverwatch.com/tutorials/article.php/3845506/Automatic-Indenting-With-Vim.htm)
filetype indent on

"Ignore these files when completing names and in Explorer
" (http://vimdoc.sourceforge.net/htmldoc/options.html#'wildignore')
set wildignore=.svn,.git

" Make autocomplete of a file act more like bash's.
" The fitst tab expands to the longest non-unique filename.
" The second tab displays filenames
" (http://vim.wikia.com/wiki/Great_wildmode/wildmenu_and_console_mouse)
set wildmode=longest:full
set wildmenu

" When you set showcmd in your vimrc, the bottom line in your editor
" will show you information about the current command going on. The
" part I like is that if you’re selecting things in visual mode it
" will show you the number of lines selected, or, if you’re doing it
" 2d-style with CTRL-V, it will show XxY for the block you’re selecting.
" (http://dailyvim.tumblr.com/post/3166172074/showcmd)
set showcmd

" Set tabstop to tell vim how many columns a tab counts for.
set tabstop=4 

" Set shiftwidth to control how many columns text is indented with
" the reindent operations (<< and >>) and automatic C-style indentation.
set shiftwidth=4 

" Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. 
" (http://tedlogan.com/techblog3.html)
set softtabstop=4

" You can set the 'gdefault' option to default to substituting multiple
" times per line. This lets you skip the ending '/g' in your keystrokes:
" (http://stackoverflow.com/questions/4082160/vim-search-and-replace-the-results)
set gdefault

" (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
" (http://www.apaulodesign.com/vimrc.html)
set smarttab

" To insert space characters whenever the tab key is pressed
" (http://vim.wikia.com/wiki/Converting_tabs_to_spaces)
set expandtab

" 'autoindent' does nothing more than copy the indentation from the
" previous line, when starting a new line. It can be useful for
" structured text files, or when you want to control most of the
" indentation manually, without Vim interfering.
" (http://vim.wikia.com/wiki/Indenting_source_code)
set autoindent

" With both ignorecase and smartcase turned on, a search is
" case-insensitive if you enter the search string in ALL lower case.
" However, if your search string has one or more characters in upper
" case, it will assume that you want a case-sensitive search. 
" (http://linuxcommando.blogspot.com/2008/06/smart-case-insensitive-incremental.html)
set smartcase
set ignorecase

" Override tab settings for html
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
" Also, override tab settings for Flask template files (called htmldjango)
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2 softtabstop=2
