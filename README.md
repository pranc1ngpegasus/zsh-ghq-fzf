# zsh-ghq-fzf

Jump into ghq local repository with fzf fuzzy finding.

## Usage

Key binding | Behavior
--- | ---
Ctrl-g | Search local repository with fzf-tmux

## Installation
### Nix flakes

```nix:flake.nix
{
    inputs = {
        zsh-ghq-fzf = {
            url = "github:Pranc1ngPegasus/zsh-ghq-fzf";
            flake = false;
        };
    };
}
```

```nix:zsh.nix
{inputs, ...}: {
    programs.zsh = {
        enable = true;
        plugins = [
            {
                name = "zsh-ghq-fzf";
                src = inputs.zsh-ghq-fzf;
            }
        ];
    };
}
```
