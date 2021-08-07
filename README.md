# 最大公約数を計算するためのシェルスクリプト

# 使用環境
- bash

# 説明
- report5.sh
    - 最大公約数を計算するスクリプト(自然数を引数に)
- report5-test.sh
    - report5.shの動作を確認するテストコード(travis用)


# 使用方法
- report5.sh

```
$ ./report5.sh 12 4
4

$ ./report5.sh 4 12
4

$ ./report5.sh 12
ERROR!

$ ./report5.sh -12 4
ERROR!
```