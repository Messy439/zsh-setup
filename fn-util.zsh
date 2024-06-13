###########################################################################
# 
# その他シェル関数ユティリティ
# 
###########################################################################


# 議事録 .md 生成用
# 同日に限りすでに議事録を作成していた場合は中身を表示
giji() {
  local fname="`date "+%Y-%m-%d"`_議事録.md"
  if [[ -e $fname ]]; then
    bat ./$fname
  else
    mk ./$fname
    echo "file \"$fname\" generated successfully."
    echo "# 議事録 `date "+%Y-%m-%d"`" > ./$fname
  fi
}