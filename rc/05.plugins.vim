for file in split(glob('$XDG_CONFIG_HOME/nvim/rc/plugins/*.vim'), '\n')
    exe 'source' file
endfor

