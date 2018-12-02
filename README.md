# YADM-Helper

## What are these scripts for?
These shell scripts are my little helpers for setting up my personal environment on home and work devices and also on servers.

## Requirements
For this to work you need bash or zsh

## How can I use these for my own environment?

```bash
eval "$(curl -o- -L -s -N UrlToEvaluate)"
```

Replace `UrlToEvaluate` with the URL of the script.

Example:

```bash
eval "$(curl -o- -L -s -N https://raw.githubusercontent.com/YannickFricke/YADM-Helper/master/colors.sh)"
```

Or use this simple function

```bash
function sourceHttpFile {
	eval "$(curl -o- -L -s -N $1)"
}
```

Example:

```bash
sourceHttpFile https://raw.githubusercontent.com/YannickFricke/YADM-Helper/master/colors.sh
```
