for file in split(glob('$XDG_CONFIG_HOME/nvim/rc/*.vim'), '\n')
    exe 'source' file
endfor
