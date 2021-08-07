#!/bin/bash

tmp=/tmp/$$ # 変数を使って表記を短く
#echo "input 2 argments" > $tmp-args # 回答準備：引数の数
#echo "input natural number" > $tmp-nat # 回答準備：数字じゃない

ERROR_EXIT () {
    echo "$1" >&2 # エラーメッセージ(引数1)を標準エラー出⼒に表⽰
    rm -f $tmp-* # 作ったファイルの削除
    exit 1 # エラー終了
}
# テスト開始
echo "teat1-1: 正常系"
./report5.sh 5 10 > $tmp-result
echo "5" > $tmp-ans
diff $tmp-result $tmp-ans || ERROR_EXIT "error in test1-1"
rm -f $tmp-*

echo "teat1-2: 正常系"
./report5.sh 21 14 > $tmp-result
echo "7" > $tmp-ans
diff $tmp-result $tmp-ans || ERROR_EXIT "error in test1-2"
rm -f $tmp-*

echo "teat2-1: 異常系"
./report5.sh > $tmp-result
echo "Error!" > $tmp-ans
diff $tmp-result $tmp-ans || ERROR_EXIT "error in test2-1"
rm -f $tmp-*

echo "teat2-2: 異常系"
./report5.sh 21 > $tmp-result
echo "Error!k" > $tmp-ans
diff $tmp-result $tmp-ans || ERROR_EXIT "error in test2-2"
rm -f $tmp-*

echo "teat2-3: 異常系"
./report5.sh -21 > $tmp-result
echo "Error!" > $tmp-ans
diff $tmp-result $tmp-ans || ERROR_EXIT "error in test2-3"
rm -f $tmp-*

echo "teat2-4: 異常系"
./report5.sh 21 -1 > $tmp-result
echo "Error!k" > $tmp-ans
diff $tmp-result $tmp-ans || ERROR_EXIT "error in test2-4"
rm -f $tmp-*