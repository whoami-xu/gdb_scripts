# 输出不分页
set pagination off

# 以缩进形式输出结构体
set print pretty on

# 保存历史
set history save on
set history size 10000
set history filename ~/.gdb_history

init-if-undefined $arg0 = -1
define loconn
  if $arg0 == -1
    port = 1234
  end
  if $arg0 != -1
    port = $arg0
  end
  target remote :$port
end
  
