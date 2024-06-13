# zsh-setup

個人的に使ってる zsh 向けエイリアスとかシェル関数とかもろもろのアーカイブ用

## 使い方

- `~` の中でこのリポジトリを `git clone`

```zsh
git clone git@github.com:Messy439/zsh-setup.git
```

- `~/.zshrc` の末尾とかにこれ追記

```zsh
for file in "${HOME}/zsh-setup/"*.zsh; do
  if [ -r "$file" ] && [ -f "$file" ]; then
    source "$file"
  fi
done
```
