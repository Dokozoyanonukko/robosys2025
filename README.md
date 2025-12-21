# schedule -逆算スケジューラ
出発時刻と必要な準備から逆算して起床時刻や所要時間などを算出するスケジューリング支援ツール  
睡眠時間算出機能付き

![test](https://github.com/Dokozoyanonukko/robosys2025/actions/workflows/test.yml/badge.svg)

## 使い方
                                                                                                                 
リポジトリをコピーしたいディレクトリにて以下の操作を行ってください。作成するテキストファイルの名前は任意です。
（入力ファイル名がinput.txtのとき）

```bash
$ git clone git@github.com:Dokozoyanonukko/robosys2025.git
$ cd robosys2025
$ vim input.txt
$ ./schedule < input.txt

2025-11-30 06:00:00  #起床時刻
2025-11-30 06:55:00  #出発5分前時刻
60.0                 #総準備時間
450.0                #睡眠時間
```

### 入力ファイル作成例
------
robosys2025のディレクトリで、以下の形式で入力ファイルを作成してください。

```
1行目：現在時刻（YYYY/MM/DD HH:MM）  
2行目：出発時刻（YYYY/MM/DD HH:MM）  
3行目以降：タスク名 所要時間（分）
```

> [!IMPORTANT]
> 最低3行必須です。
> タスク名以外は、スペース含む全てを半角文字で入力してください。

入力例：
```
2025/11/29 23:30
2025/11/30 07:00
身支度 30
朝食 20
休憩 10
```

## 必要なソフトウェア
- Python
    - テスト済みバージョン: 3.7 ~ 3.12

## テスト環境
- Ubuntu 24.04 LTS

## 著作権・ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2025 Dokozoyanonukko
