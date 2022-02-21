# Auto Configure Environments

## MacOS

```bash
./macos.install.sh
```

## Linux

```bash
./linux.install.sh
```

# Download Public Repos

To clone all public repos in GitHub:

```
curl -s https://api.github.com/users/josephbateh/repos | grep \"ssh_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' | xargs -n1 git clone
```