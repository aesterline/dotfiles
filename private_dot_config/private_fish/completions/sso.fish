function __sso_complete_root
  test (count (commandline -o)) = 1
end

function __sso_complete
  command sed -n -e 's/^\[profile \(.*\)\]/\1/p' "$HOME/.aws/config"
end

complete --command sso --no-files --arguments '(__sso_complete)'
complete --command sso --no-files --condition '__sso_complete_root' --arguments logout -d 'Logout of the curren SSO session'