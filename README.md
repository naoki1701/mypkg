# ROS2を用いたパブリッシャ、サブスクライバーの例
* ディレクトリ名： `ros2_ws`
* この例は、Pythonを使用したROS2のシンプルなパブリッシャ（`talker.py`）とサブスクライバー（`listener.py`）を示したものです。
## 使用例
  * 使用例1：  
    ```
    端末1$ ros2 run mypkg talker
    端末2$ ros2 topic echo /countup
    ```
  * 使用例2：
    ```
    端末1$ ros2 run mypkg talker
    端末2$ ros2 run mypkg listener
    ```
  * 使用例3：
    ```
    $ ros2 launch mypkg talk_listen.launch.py
    ```
## 必要なミドルウェア
* ROS 2 [ROS 2がシステムにインストールされていることを確認してください。]
## 著作権に関する記載
* このソフトウェアパッケージは、3条項BSDライセンスの下、再配布および使用が許可されます。
* このパッケージのコードは、下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを、本人の許可を得て自身の著作としたものです.
  * [ryuichiueda/my_slides robosys2022](http://github.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Naoki Kobayashi
