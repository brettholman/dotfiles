[ -n "$PS1" ] && source ~/.bash_profile;

eval "$(rbenv init -)"


# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /site/slalom/node/myServerlessApp/node_modules/tabtab/.completions/serverless.bash ] && . /site/slalom/node/myServerlessApp/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /site/slalom/node/myServerlessApp/node_modules/tabtab/.completions/sls.bash ] && . /site/slalom/node/myServerlessApp/node_modules/tabtab/.completions/sls.bash