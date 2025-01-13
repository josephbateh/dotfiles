# Crontab example

# Backup Things

```crontab
0 12 * * * /bin/bash $HOME/.dotfiles/scripts/delete-old-branches.sh
* * * * * /bin/bash $HOME/.dotfiles/update.sh
```
