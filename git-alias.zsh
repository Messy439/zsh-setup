###########################################################################
# 
# git 短縮コマンド
# 
###########################################################################
# 
# おそらく Vegeoku を引き継いだ人へのメッセージ (by Messy439):
#
# これぶっちゃけ引き継いだ人好みによって変えてもいいです
# 略し方が正直結構賛否両論ありそうなんで
#
###########################################################################


# 一応。
alias g='git'

# ステージング
alias ga='git add'

# コミット
alias gc='git commit'
# コミットメッセージ直書き
alias gcm='git commit -m'

# 直前のコミットのメッセージ変えたい場合のやつ
alias gca='git commit --amend'
alias gcam='git commit --amend -m'

# ステージングステータス確認用
alias gs='git status'

# 現在のブランチ確認用 (git 版 pwd みたいなもん)
alias gb='git branch'
# ブランチの最終コミット内容メッセージも一緒に確認できるやつ
alias gbv='git branch -vv'
# ローカル & リモートブランチ確認用
alias gba='git branch -a'
# リモートブランチ確認用
alias gbr='git branch -r'

# コミット履歴確認用
alias gl='git log --graph --name-status --pretty=format:"%C(red)%h %C(green)%an %Creset%s %C(yellow)%d%Creset"'

# ブランチ切り替え
alias gsw='git switch'
# gsw がキーボードポジション的に打ちにくいのでもう一つ定義
alias gss='git switch'

# main ブランチに早く戻るためのやつ
alias gsm='git switch main'

# ブランチ新規作成
alias gsc='git switch -c'
# git checkout -b も ↑ と等価なので一応...
alias gcb='git checkout -b'

# マージ元で git merge <マージ対象> を打つ
alias gm='git merge'

# リモートに push
alias gp='git push'

# コミット取り消し
# soft: コミット履歴だけ削除
# hard: コミット履歴およびローカルのファイルもコミット前の状態に強制変更。下手したら作業内容吹き飛ぶので慎重に使うこと
# mixed: コミット履歴およびステージ状態初期化 (git commit と git add 両方取り消す感じ)
# 参考 : https://qiita.com/shuntaro_tamura/items/06281261d893acf049ed, https://zenn.dev/goldsaya/articles/148ed92aed74cd
alias grs='git reset --soft'
alias grh='git reset --hard'
alias grx='git reset --mixed'

# コミットを取り消したあと「コミットを取り消したという履歴」もコミット
# git reset --soft とは違って、取り消しを明示したい場面に使われる
alias grv='git revert'

# 直前のコミットはよく取り消すので更に短縮
alias grsh='git reset --soft HEAD^'
alias grhh='git reset --hard HEAD^'
alias grxh='git reset --mixed HEAD^'
alias grvh='git revert HEAD'

# リモートリポジトリと連動 (GitHub とか)
alias gr='git remote'

# git の操作履歴確認用
# 一応 git reset --hard HEAD@{N} で操作履歴ベースで元に戻ることもできる
alias grl='git reflog'

# 参考 : https://qiita.com/C_HERO/items/06669621a1eb12d8799e
alias grb='git rebase'

# まあまあ使うので一応
# e.g.
# - 前回のコミット状態にローカル環境の変更を全部リセットしたい (※ コミット以降の作業内容全消しなので慎重に使うこと)
#   => (gck .)
# - git switch -c と等価
#   => (gck -b)
alias gck='git checkout'

# ステージした内容の一時避難
# 参考 : https://qiita.com/chihiro/items/f373873d5c2dfbd03250
alias gst='git stash'

# stash した内容一覧確認用
alias gsl='git stash list'

# リモートリポジトリの最新情報持ってくる系のやつ
alias gf='git fetch'
alias gpl='git pull'

# git 自体の設定
# e.g. (gcf user.name 'vegeoku-dev')
alias gcf='git config'
# グローバル設定用
alias gcfg='git config --global'

# 設定一覧確認用
alias gcfl='git config -l'
alias gcfgl='git config --global -l'

# 主にリモートリポジトリの内容引っ張ってくるときに使う
alias gcl='git clone'

# git にファイルの移動や削除を記録させるためのコマンド
alias gmv='git mv'
alias grm='git rm'

# このファイルの内容確認用
alias gg='cat ~/zsh-setup/git-alias.zsh | grep alias'
