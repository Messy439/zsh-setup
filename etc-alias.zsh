###########################################################################
# 
# 便利な短縮コマンド系
# 
###########################################################################


# 空ファイル生成用
alias mk='touch'

# 画面出力一旦全部消したいとき用
alias cls='clear'

# コマンド履歴確認用
alias hist='history'

# python バージョン違い対策
alias py='python3'
alias python='python3'

# ターミナル終了用
alias q='exit'

# [cp | mv] ミス防止用 
alias cp='cp -i'
alias mv='mv -i'

# 時刻文字列取得用
# e.g. (touch `tlong`.md) で現在時刻が名前となる .md ファイルが生成される
alias tshort='date +"%Y-%m-%d"'
alias tlong='date +"%Y-%m-%d_%H-%M-%S"'

# VSCode で ~/.zshrc 編集したいとき用
alias cz='code -r ~/.zshrc'
# ~/.zshrc 再読み込み (zsh 設定を反映)
alias sz='source ~/.zshrc'

# "| grep" の省略
# e.g. (env | grep PATH) が (env G PATH) と書ける
alias -g G='| grep --color=auto'

# sl 誤爆してもデフォルトで殺せるように変更
alias sl='sl -e'
