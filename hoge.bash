#!/bin/bash

echo 第2回ロボットシステム学の復習
 

echoラズベリーパイ上のUbuntuで作成したファイルをGitHub上に送る方法（リモートレポジトリをローカルに送る方法）

echoステップ１．リポジトリの画面の”code ”をクリックし、送りたいURLをコピー
echoステップ２．　git clone <さっきコピーしたURL>　
echoステップ３．クローンした先に移動　cd　丸々/
echoステップ４．ls　でクローンできているか確認
echoステップ５．ファイルの中身を見る　cat 見たいファイル名


echoレポジトリにコードを追加

echoステップ６． vi 丸々.bash でコード作成ページを開く。文字入力では　Ｅｓｃボタンを押してから、入力。viでのファイル保存方法時はＥｓｃボタンを押してから、「　：ｗｑ　」
echoステップ７．ファイルの実行　chmod +x 丸々.bash  でエンター。
echoステップ８．その後、　./丸々.bash　でエンターで実行される。


echo add して status 見て、commit

echoステップ９．git add 丸々.bash　で、送りたいファイルをaddする。
echoステップ１０．git status で、addしたファイルが何か確認する。
echoステップ１１．git commit -m "ああああ"      ああああの場所は、何の変更をしたのか記載する。
echo ステップ１２．送りたいファイルが格納してある場所で　ls をして、ファイルがちゃんとそこにあるのかを確認
echoステップ１３．　git push   を行い、GitHubのIDとPWを求められるので入力して完成。　
