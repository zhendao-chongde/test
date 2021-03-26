#!/bin/bash


echo ROSのインストールが終了したら、次は「　roscore　」と打つ。roscoreとは、ROSの基本的なプログラムやnodesの集まりです。 ROSのnodesとの間で通信をするには、roscoreを立ち上げなければなりません。 簡単に言うと、ラズベリーパイ上のUbuntuとROSのソフトウェアの通信をしてくれるものです。



echo ワークスペースの作成
echo ワークスペースとは、作業場のことで、ソフトウェアが置かれる場所。
echo ステップ１．ディレクトリの作成　　「　mkdir -p catkin_ws/src　」　ちなみに-p とは2階層以上のディレクトリを作成する際につけるもの。
echo ステップ２．作ったディレクトリ先に移動　「　cd ~/catkin_ws/src　」
echo ステップ３．ここを特別なディレクトリにする　「　catkin_init_workspace　」
echo ステップ４．ls をして、ファイルが生成されているか確認

echo※catkin とはビルドシステムの１つ。一番マイナーなもの。


echo ワークスペースの設定をする　（bashを通す） 
echo ステップ１．bashrcに記述する「　vi ~/.bashrc　」
echo ステップ２ 「 source ~/catkin_ws/devel/setup.bash 」と追記する．ｊで一番下に行き、source何何　と書かれている場所に追記。「Esc」を押し「:wq」で保存。
echo ステップ３．source ~/.bashrc 
echo※-bash:/home/ubuntu/catkin_ws/devel/setup.bash そのようなファイルやディレクトリはありません。というエラーが帰ってくる。
echo ステップ４．ありませんということだったので、作成します。
echo ステップ５．ディレクトリを１つ前に移動します。場所はcatkin_wsの直下です。　「 cd ..　」

echo 環境のビルド
echo ステップ６．ここに「　catkin_make　」と打つ。中には何も入っていないと思いきや、実は標準装備のビルド入っているのでビルドが始まります。
echo ステップ７．ファイルを確認　「　find .　」
echo ステップ８．その中から grep のsetup.bashを探します。　「　find . | grep setup.bash　」　注意　間にある｜はLではありません。円マーク上にある記号です。名前は知らん。
echo これでステップ２でやった追記部分の読み込みができる。
echo ステップ９．「source ~/.bashrc　」と打つ。（←ステップ３と同じ）これでシェルがROSのいろんな機能を使えるようになります。
echo スペース１０．本当に使えるようになったのかを確認　「 echo $ROS_PACKAGE_PATH　」と打ち、/home/ubuntu/catkin_ws/src:/opt/ros/noetic/shareと返ってきたら成功。　




echo でかい意味でのインストール作業は終了。
