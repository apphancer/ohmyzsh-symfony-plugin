# Symfony CLI and Symfony Console aliases and command completion for Oh My Zsh

This plugin provides:
- Aliases for [symfony/cli](https://github.com/symfony/cli)
- Completion for [Symfony Command](https://symfony.com/)
- Running Symfony Console commands using Symfony binary, i.e. with the PHP version specified for current project


This is a modified version of the original https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/symfony2


## Installation

To use it add `symfony-cli` to the plugins array in your zshrc file.

```bash
plugins=(... symfony-cli)
```


## Aliases

| Alias         | Command                      | Description                   |
|---------------|------------------------------|-------------------------------|
| `sc`          | php bin/console              | Runs the Symfony Console      |
| `sccc`        | sc cache:clear               | Clears the cache              |
| `s`           | symfony                      | Runs Symfony CLI              |
| `sss`         | s server:start               | Starts the local web server   |
