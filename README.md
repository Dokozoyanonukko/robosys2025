# schedule -逆算スケジューラ
出発時刻と必要な準備から逆算して起床時刻や所要時間などを算出するスケジューリング支援ツール
睡眠時間算出機能付き

## 使い方
### リポジトリの取得
リポジトリをコピーしたいディレクトリで以下のコマンドを入力してください
```bash
git clone git@github.com:Dokozoyanonukko/robosys2025.git
```
その後、以下のディレクトリに移動してください
```bash
cd robosys2025
```

### 入力
robosys2025のディレクトリで、以下の形式で入力ファイル（例：input.txt）を作成してください
最低3行必須です

```
1行目：現在時刻（YYYY/MM/DD HH:MM）  
2行目：出発時刻（YYYY/MM/DD HH:MM）  
3行目以降：タスク名 所要時間（分）
```

入力例：
```
2025/11/29 23:30
2025/11/30 07:00
身支度 30
朝食 20
休憩 10
```

### 実行
以下のコマンドを入力して実行してください

作成したテキストファイル名がinput.txtの場合：
```bash
python schedule < input.txt
```

### 出力
各行に値を1つずつ出力します

出力例と説明：
```
2025-11-30 06:00:00  #起床時刻
2025-11-30 06:55:00  #出発5分前時刻
60               #総準備時間
450              #睡眠時間
```

## 必要なソフトウェア
- Python
    - テスト済みバージョン: 

## テスト環境
- Ubuntu 24.04 LTS

## 著作権・ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- © 2025 Dokozoyanonukko


これ以下どうすれば？？？
- このパッケージのコードは、下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを、本人の許可を得て自身の著作としたものです
    - [ryuichiueda/my_slides robosys_2025](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)
- © 2025 Ryuichi Ueda
