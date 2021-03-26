#!/bin/bash

echo ROS用のソフトウェアパッケージを利用するよう方法

echo利用方法は２つ。１つはaptでインストール。もう１つはワークスペースでビルド。今回前半では前者で、後半では後者のワークスペースでビルドを行う。

echo 後者のやることを簡単に説明すると、ソフトを置く場所はcatkin_ws/srcの直下。catkin_wsでビルドをして使う。自分でパッケージを作っているときはここにパッケージをおいて、ビルドしながらデバックしながら作っていく。

echo例）ラズベリーパイのUbuntu上でWEBカメラを起動させる。
echoステップ１．apt でROSパッケージのインストール　「　sudoapt install ros-noetic-cv-camera　」これはOPEN-CVのカメラ画像を読み込むパッケージです。
echo ステップ２．「　sudo apt install ros-noetic-cv-bridge　」でOPEN-CVとROSの連絡をするパッケージをインストール。


echoこれで、カメラの画像をROSの世界に組み込む設定をしました。次は、ラズベリーパイの中でウェブサーバーを立てて、ほかのPCから見られるように、ほかのパッケージをインストールします。

echoステップ３.さっきはaptでやってので、今回はソースコードからコンパイルをかけてみます。
echo 「　catkin_ws/src　」に移動し、「　git clone https://github.com/GT-RAIL/async_web_server_cpp.git　」をクローン。
echo ステップ４．次は「　git clone https://github.com/RobotWebTools/web_video_server.git　」をクローン。
echo ステップ５．クローンしたパッケージをビルドします。まずはcatkin_wsに移動します。その後、「 catkin_make 」をしてビルドをします。catkin_makeは必ずcatkin_es直下で行ってください。

echo｛｛豆知識：どうやってビルドするかは普通、makeファイルとかで指定するが、ROSは違っており、ROSの場合はcmakeで指定する。（cmakeがmakeファイルを作ってビルドしてくれる）｝｝

echoステップ６．ステップ５が完了すると使えるようになりました。では、実際に動作を確認してみましょう。まずはroscoreを立ち上げます。ディレクトリはcatkin_ws/srcで、「　roscore　＆　」　ちなみに＆の意味はバックグラウンドという意味です。つまり、バックグラウンドでroscoreを立ち上げるという意味です。なんでバックグラウンドで立ち上げたかというと、新たにubuntuを立ち上げるのがめんどくさいからです。
echoステップ７．カメラを立ち上げる。　「　ls /dev/video*　」
echoステップ８．カメラをラズベリーパイに差し込む。
echo ステップ９．もう一度「　ls /dev/video* 」をすると、/dev/video0が新たに出てくる。
echoステップ１０．「　rosrun cv_camera cv_camera_node 」と打つ。意味はcv_cameraというパッケージのcv_camera_nodeというプログラムを立ち上げて下さい。注意：ここにカメラの画像が出るわけではない。またワーニングが出ているが問題はない。これでプログラムが１つ立ち上がりました。ではもう１つプログラムを立ち上げましょう。

echoステップ１１．ssh ubuntu@192.168.丸.丸でもう１つ端末を立ち上げる。
echo　ステップ１２．新しく立ち上げた方で、サーバーの立ち上げ。「　rosrun web_video_server web_video_server　」と打つ。この意味はweb_video_serverというパッケージのweb_video_serverというプログラムを立ち上げて下さいというもの。

echoステップ１３．ステップ１２の返り値に{INFO]..略..Waiting for connections on 0.0.0.0:8080　という記載がある。これはポート番号８０８０でカメラの画像を配信していますという意味。ラズベリーパイ上で行っているプログラムだが、今使っているブラウザで見れます。見方はGooglechromeを開き、上のURLを入れるところに「　　192.168.丸.丸:8080　　」でOK　192.168.丸.丸とはラズベリーパイのIPアドレスのこと。




