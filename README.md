# dotfiles

## Ubuntu環境構築
### 1. git sshキーの登録
* `~/.ssh`に移動して、`ssh-keygen`コマンドを実行
  *  いろいろ聞かれるが基本的にすべてエンターを押して無視してOK
### 2. 本リポジトリのクローン
```
git clone [url for ssh clone]
```
### 3. `install.sh`コマンドの実行
* `~/dotconfig/install`に移動して、以下コマンド
```
./install.sh
```
  * 実行権限がないといわれた際は以下コマンドを実行したのちに再度実行
    ```
    chmod +x install.sh
    ```
### 4. 各種設定ファイルのシンボリックリンクの作成
```
ln -s ~/dotfiles/config/git/.gitconfig ~/.gitconfig  # git設定ファイル
ln -s ~/dotfiles/config/zsh/.zshrc ~/.zshrc  # zsh設定ファイル
ln -s ~/dotfiles/config/zsh/.p10k.zsh ~/.p10k.zsh  # zshのターミナルテーマ設定ファイル
```
