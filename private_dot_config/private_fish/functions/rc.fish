# Defined in - @ line 1
function rc --wraps='e $HOME/.config/fish' --description 'alias rc=e $HOME/.config/fish'
  e $HOME/.config/fish $argv;
end
