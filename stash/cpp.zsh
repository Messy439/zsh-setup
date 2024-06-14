###########################################################################
# 
# C++ 関連
# 
###########################################################################


# C コンパイル & 実行 & .out 削除
c_compile() {
  clear && gcc -std=c$1 -Wall -Wextra -o $2.out $2 && ./$2.out && rm $2.out
}
c11() {
  c_compile 11 $1
}
c14() {
  c_compile 14 $1
}

# C++ コンパイル & 実行 & .out 削除
cpp_compile() {
  clear && g++ -std=c++$1 -Wall -Wextra -o $2.out $2 && ./$2.out && rm $2.out
}
cpp17() { 
  cpp_compile 17 $1
}
cpp20(){
  cpp_compile 20 $1
}

# C++ | 警告 MAX
cpp_maxwarn(){
  clear && g++ -std=c++$1 -Wall -Wextra -Werror -pedantic -Wconversion -Wcast-align -Wcast-qual -Wctor-dtor-privacy -Wdisabled-optimization -Wformat=2 -Winit-self -Wlogical-op -Wmissing-include-dirs -Wnoexcept -Wold-style-cast -Woverloaded-virtual -Wredundant-decls -Wshadow -Wsign-promo -Wstrict-null-sentinel -Wstrict-overflow=5 -Wundef -Wno-unused -Wno-variadic-macros -Wno-parentheses -fdiagnostics-show-option -o $2.out $2.cpp && ./$2.out && rm $2.out
}
