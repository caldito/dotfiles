
set tabstop=4 
set softtabstop=4
set expandtab
set number
set relativenumber


" solarized color palette
:call system('[ ! -d ""${HOME}"/.vim" ] && mkdir ~/.vim')
:call system('[ ! -d ""${HOME}"/.vim/colors" ] && mkdir ~/.vim/colors')
:call system('[ ! -f ""${HOME}"/.vim/colors/solarized.vim" ] && wget -q https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim  -P ~/.vim/colors')

syntax enable
set background=dark
colorscheme solarized


