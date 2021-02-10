# Symfony CLI and Symfony Console aliases and command completion

_symfony_console () {
  echo "symfony console $(find . -maxdepth 2 -mindepth 1 -name '' -type f | head -n 1)"
}

_symfony_cli () {
  echo "symfony"
}

_symfony_get_command_list () {
   `_symfony_console` --no-ansi | sed "1,/Available commands/d" | awk '/^  ?[^ ]+ / { print $1 }'
}

_symfony () {
   compadd `_symfony_get_command_list`
}

compdef _symfony '`_symfony_console`'
compdef _symfony sc

#Aliases for Symfony CLI
alias s='`_symfony_cli`'
alias sss='s server:start'

#Aliases for Symfony Console
alias sc='`_symfony_console`'
alias sccc='sc cache:clear'
