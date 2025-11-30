#!/bin/bash
# SPDX-FileCopyrightText: 2025 Dokozoyanonukko 
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

### NORMAL INPUT ###
input_normal=$'2025/11/29 23:30\n2025/11/30 07:00\n身支度 30\n朝食 20\n休憩 10'
expected=$'2025-11-30 06:00:00\n2025-11-30 06:55:00\n60.0\n390.0'

out=$(printf "%s" "$input_normal" | ./schedule)
[[ "$out" == "$expected" ]] || ng "$LINENO"

### STRANGE INPUT ###
# 1: テキストでない（＝ただの文字列）
out=$(echo あ | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 2: 空入力
out=$(echo "" | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 3: 3行未満
out=$(echo "2025/11/29 23:30" | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 4: 日付と時刻の間にスペースがない
out=$(echo "2025/11/29_23:30
2025/11/30 07:00
身支度 30" | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 5: タスクと所要時間の間にスペースがない
out=$(echo "2025/11/29 23:30
2025/11/30 07:00
朝食20" | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 6: 時刻のコロンや数字が全角になっている
out=$(echo "2025/11/29 ２３：３０
2025/11/30 07:00
身支度 30" | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"

# 7: 日付の区切りが "-" になっている
out=$(echo "2025-11-29 23:30
2025/11/30 07:00
身支度 30" | ./schedule)
[ "$?" = 1 ] || ng "$LINENO"
[ "$out" = "" ] || ng "$LINENO"


###結果###
[ "${res}" = 0 ] && echo OK
exit $res

