# Defined in - @ line 1
function t --wraps='npm t' --description 'alias t=npm t'
  npm t $argv;
end
