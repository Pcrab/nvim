set runtimepath+=$XDG_CONFIG_HOME/nvim/vimplugin/repos/github.com/Shougo/dein.vim
if dein#load_state('$XDG_CONFIG_HOME/nvim/vimplugin')
    call dein#begin('$XDG_CONFIG_HOME/nvim/vimplugin')

    call dein#add('$XDG_CONFIG_HOME/nvim/vimplugin/repos/github.com/Shougo/dein.vim')

    " ===
    " === Load plugins
    " ===

    call dein#add('bling/vim-bufferline')
    call dein#add('blueshirts/darcula')

    call dein#add('frazrepo/vim-rainbow')

    call dein#add('itchyny/lightline.vim', {'merged': 0})

    call dein#add('junegunn/goyo.vim')
    call dein#add('junegunn/limelight.vim')
    call dein#add('junegunn/seoul256.vim')
    call dein#add('junegunn/vim-easy-align')

    call dein#add('kristijanhusak/defx-git')
    call dein#add('kristijanhusak/defx-icons')

    call dein#add('mhinz/vim-signify')

    call dein#add('neomake/neomake')
    " call dein#add('neoclide/coc.nvim', {'merged': 0, 'build': 'yarn install --frozen-lockfile'})

    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
    call dein#add('Raimondi/delimitMate')

    call dein#add('sbdchd/neoformat')
    call dein#add('scrooloose/nerdcommenter')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('Shougo/defx.nvim')
    call dein#add('Shougo/deoplete.nvim')
    call dein#add('Shougo/deoppet.nvim')
    call dein#add('Shougo/echodoc.vim')
    call dein#add('Shougo/neosnippet-snippets')

    call dein#add('tbodt/deoplete-tabnine', { 'build': './install.sh' })

    call dein#add('Yggdroot/LeaderF', {'merged': 0})

    " ===
    " === Lazy load plugins
    " ===

    call dein#add('dhruvasagar/vim-table-mode', {'on_cmd': 'TableModeToggle'})

    call dein#add('hail2u/vim-css3-syntax', {'on_ft': ['javascript', 'css', 'html', 'stylus']})

    call dein#add('jceb/vim-orgmode', {'on_ft': ['orgmode']})

    call dein#add('KeitaNakamura/tex-conceal.vim', {'on_ft': ['tex']})

    call dein#add('lervag/vimtex', {'on_ft': ['tex']})

    call dein#add('mattn/emmet-vim', {'on_ft': ['javascript', 'css', 'html', 'stylus']})

    call dein#add('Yggdroot/indentLine', {'on_cmd': 'IndentLinesEnable'})

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
