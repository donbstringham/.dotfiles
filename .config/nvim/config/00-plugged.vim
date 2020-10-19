call plug#begin("~/.config/nvim/plugged")
    " colorschemes
    Plug 'icymind/neosolarized'

    " general
    Plug 'editorconfig/editorconfig-vim'
    Plug 'neomake/neomake'
    Plug 'itspriddle/vim-marked'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'raimondi/delimitmate'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-surround'

    " search
    Plug 'ctrlpvim/ctrlp.vim'

    " completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'shougo/neoinclude.vim'
    Plug 'shougo/neosnippet.vim'
    Plug 'shougo/neosnippet-snippets'
    Plug 'roxma/nvim-yarp'

    " file browsing
    Plug 'majutsushi/tagbar'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'jeetsukumaran/vim-buffergator'

    " git integration
    Plug 'airblade/vim-gitgutter'
    Plug 'chemzqm/vim-easygit'
    Plug 'tpope/vim-fugitive'

    " status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " eye candy
    Plug 'ryanoasis/vim-devicons'

    " go
    Plug 'fatih/vim-go'
    Plug 'nsf/gocode', {'rtp': 'nvim/'}

    " html
    Plug 'mattn/emmet-vim'

    " javascript
    Plug 'elzr/vim-json'
    Plug 'pangloss/vim-javascript'

    " markdown
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'
    Plug 'itspriddle/vim-marked'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}

    " php
    Plug 'phpactor/phpactor', {'do': ':call phpactor#Update()', 'for': 'php'}
    Plug 'sumpygump/php-documentor-vim', {'for': 'php'}

    Plug 'wakatime/vim-wakatime'
call plug#end()
