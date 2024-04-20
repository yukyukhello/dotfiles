# dotfiles

## Ubuntu環境構築
### 1. git sshキーの登録
* `~/.ssh`に移動して、`ssh-keygen`コマンドを実行
  *  いろいろ聞かれるが基本的にすべてエンターを押して無視してOK
### 2. 本リポジトリのクローン
```
git clone [url for ssh clone]
```
### 3. `install.sh`ファイルの実行
* `~/dotconfig/setting`に移動して、以下コマンド
  ```
  ./install.sh
  ```
  * 実行権限がないといわれた際は以下コマンドを実行したのちに再度実行
    ```
    chmod +x install.sh
    ```
  * アプリケーションのインストール
    * g++
    * Cmake
    * python
    * マイクロソフト社のフォント
### 4. `setting.sh`ファイルの実行
* `~/dotconfig/setting`に移動して、以下コマンド
  ```
  ./setting.sh
  ```
### 5. フォントの設定
* zshのターミナルテーマPowerlevel10k用のフォントをインストール
  * [MesloLGS NF Regular](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
  * [MesloLGS NF Bold](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf)
  * [MesloLGS NF Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf)
  * [MesloLGS NF Bold Italic](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf)
* 使用したいターミナルのフォントを`MesloLGS NF`に設定する
