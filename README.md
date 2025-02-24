# Auto Configure Environments

## MacOS

```bash
./macos.install.sh
```

## Linux

```bash
./linux.install.sh
```

## Download Public Repos

To clone all public repos in GitHub:

```sh
curl -s https://api.github.com/users/josephbateh/repos | grep \"ssh_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' | xargs -n1 git clone
```

## Multiple SSH Keys for GitHub Accounts

If you need to use two different GitHub accounts on the same machine and need a separate SSH key for each one, do the following:

```sh
ssh-keygen
```

When prompted, save the key in a file named `prefix_username` in the `~/.ssh` directory.

Then, add the following to the `~/.ssh/config` file:

```sh
Host github.com-username
    HostName github.com
    User git
    IdentityFile ~/.ssh/prefix_username
```
