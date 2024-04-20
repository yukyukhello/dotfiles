#!/bin/bash

# Function to prompt user for execution
ask_execute() {
    read -p "Do you want to $1? (y/n): " choice
    case "$choice" in
        y|Y ) return 0;;
        n|N ) return 1;;
        * ) echo "Invalid choice. Please enter 'y' or 'n'.";;
    esac
}

# シェルをbashからzshに変更する
if ask_execute "change default shell to zsh"; then
    sudo apt install -y zsh  # zshのインストール
    chsh -s $(which zsh)  # デフォルトシェルの変更
fi

# 設定ファイルのシンボリックリンクの作成
if ask_execute "create symbolic links of the setting files"; then
    ln -sf ~/dotfiles/config/git/.gitconfig ~/.gitconfig  # git設定ファイル
    cp ~/dotfiles/config/git/.commit_template ~/.commit_template  # コミットテンプレートのコピー
    ln -sf ~/dotfiles/config/zsh/.zshrc ~/.zshrc  # zsh設定ファイル
    ln -sf ~/dotfiles/config/zsh/.p10k.zsh ~/.p10k.zsh  # zshのターミナルテーマ設定ファイル
fi
