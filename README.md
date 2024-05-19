# dotfiles

## Packages

Add brew (core, taps and Mac Apple Store) packages to `.chezmoidata/packages.yaml`

## New machine

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply caiorcferreira
```

## Update machine

Pull remote changes and apply, in single command:
```bash
chezmoi update
```

Pull remote changes, see diff:
```
chezmoi git pull -- --autostash --rebase && chezmoi diff
```

Only apply changes (after pulling changes):
```bash
chezmoi apply
```
