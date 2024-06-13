###########################################################################
# 
# tar/gunzip 専用関数
# 
###########################################################################


# .[t]ar.gz を [z]ip
tz() {
  tar -cvf $1.tar.gz ./$1
}

# .[t]ar.gz を [u]nzip
tu() {
  tar -tvf $1 && tar -xf $1
}

# .[t]ar.gz を解凍ぜすに [l]s みたいに確認
tl() {
  tar -tvf $1
}
