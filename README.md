# Fishtank
This is my take on a [fish shell](http://fishshell.com/) environment.

What is fish?

>fish is a smart and user-friendly command line
shell for OS X, Linux, and the rest of the family.

## Installation
For now, installation is done through cloning this repo into `~/.config/fish` as a full replacement.

## Customisations
Customisations are done in two directories:

`~/.config/fish/local` for local functions that you don't think would suit the upstream core project (otherwise you should open up a [pull request!](#pull-request)). All files ending in `.fish` are [sourced](config.fish#L8) for each shell.

`~/.config/fish/conf` is used for local configurations files that can be sourced from functions within fish. By default, this directory is not sourced by fish.

Both of the above directories are ignored in `.gitignore`.

## Pull Requests
Have a function or feature you think would suit the project? Pull requests are welcome and encouraged!

## Credits
A lot of credit goes to [cowboy](https://github.com/cowboy) and his original [dotfiles](https://github.com/cowboy/dotfiles) that has given me inspiration to build this.
