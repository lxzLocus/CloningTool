# Repository Clone Tool

## 概要

リポジトリのissueとpull requestを分析し，プログラム関係のファイルが変更されている場合のみ，マージ前後のリポジトリ状態を取得するプログラム．
動作少しおかしい

## 使い方

1. `cloneTarget.csv`にクローン対象のリンクを入れる．
2. `src.js`内の `programmingFileExtensions`変数にクローンする対象となる，修正や変更などがあったファイルの拡張子を定義する．
3. `docker compose up --build`の実行．

## 実行環境

Dockerコンテナで実行

1. `./`にて `docker compose up --build`

   `./cloned`以下にクローンされる

```planeText
Repository Clone Tool
└── cloned/
	           ├── <Repository Name 1>
                |              ├── issue/
                |               |            └── <issue Title>
                |               |                           ├── premerge/
                |               |                           └── merge/
                |              └── pullrequest/
                |                              └── <pullrequest Title>
                |                                           ├── premerge/
                |                                           └── merge/
                |   
               ├── <Repository Name 2>
               └── <Repository Name 3>
```

## もしかして

`sudo git config --system core.longpaths true`

  or

`.git/config [core] longpaths = true` 追加
