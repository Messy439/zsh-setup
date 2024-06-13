###########################################################################
# 
# ls コマンドカスタマイズ
# 
###########################################################################


# 従来の ls とほぼ同じ
alias ls='eza --icons -F'

# 基本的にこれ使えば OK
alias l='ls -lh --git --group-directories-first'

# ディレクトリの中身まで表示 (深さ 2)
alias lt='l -TL2'

# 隠しファイル (「.」から始まるファイルやディレクトリ) も表示
alias la='l -a'

# .gitignore で隠したファイルを表示しない
alias lg='l --git-ignore'

# 画面一旦消してから表示
alias lc='clear && l'

# ファイルが生成された相対時間で表示
alias lr='l --time-style relative'

# よく使うのでエイリアス化
alias l2='l -TL2'
alias l3='l -TL3' 
alias l4='l -TL4'
alias lg2='lg -TL2'
alias lg3='lg -TL3'
alias lg4='lg -TL4'

# 超詳細表示 (多分いらない)
# alias ll='l -agHiS'
