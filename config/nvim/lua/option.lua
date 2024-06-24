local options = {
    swapfile = false,         -- スワップファイルを作成しない
    helplang = "ja",          -- ヘルプの言語を日本語に設定
    syntax = "on",            -- 構文のハイライトを有効にする
    encoding = "utf-8",       -- デフォルトの文字エンコーディングをUTF-8に設定
    title = true,             -- Vimウィンドウのタイトルを表示する
    number = true,            -- 行番号を表示する
    ruler = true,             -- 右下にカーソル位置を表示する
    smartcase = true,         -- 検索時に大文字と小文字を区別する
    cursorline = true,        -- 現在の行をハイライトする
    shiftwidth = 2,           -- シフト幅を2スペースに設定する
    tabstop = 2,              -- タブ文字の表示幅を2スペースに設定する
    hls = true,               -- 検索結果をハイライトする (hlsearch)
    clipboard = "unnamed",    -- システムクリップボードを使用する
    showmatch = true,         -- 括弧の対応を一時的にハイライトする
    fileencodings = "utf-8",  -- ファイルを読み込む際に試すエンコーディングのリストを設定
    updatetime = 300,         -- イベントが発生してから更新が行われるまでの待ち時間を300ミリ秒に設定する
    laststatus = 2,           -- ステータスラインを常に表示する
    expandtab = true,         -- タブ文字をスペースに変換する
    autoindent = true,        -- 新しい行を自動的にインデントする
    smartindent = true        -- プログラムの構造に基づいて自動インデントを行う
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
