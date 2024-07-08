-- leaderキーをスペースキーに設定
vim.g.mapleader = " "

-- キーマッピング設定
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- 挿入モード
keymap('i', 'jj', "<Esc>", opts)         -- 'jj' でノーマルモードに戻る
keymap('i', 'っj', "<Esc>", opts)        -- 'っj' でノーマルモードに戻る
keymap('i', '<C-j>', "<Down>", { noremap = true })     -- 'Ctrl+j' でカーソルを下に移動
keymap('i', '<C-k>', "<Up>", { noremap = true })       -- 'Ctrl+k' でカーソルを上に移動
keymap('i', '<C-h>', "<Left>", { noremap = true })     -- 'Ctrl+h' でカーソルを左に移動
keymap('i', '<C-l>', "<Right>", { noremap = true })    -- 'Ctrl+l' でカーソルを右に移動

-- ノーマルモード
keymap('n', 'あ', "a", opts)             -- 'あ' で 'a' コマンド
keymap('n', 'い', "i", opts)             -- 'い' で 'i' コマンド
keymap('n', 'う', "u", opts)             -- 'う' で 'u' コマンド
keymap('n', 'え', "e", opts)             -- 'え' で 'e' コマンド
keymap('n', 'っy', "yy", opts)           -- 'っy' で行全体をコピー
keymap('n', 'っd', "dd", opts)           -- 'っd' で行全体を削除
keymap('n', '<leader>s', ':w<CR>', opts) -- リーダーキー + 's' でファイルを保存
keymap('n', 'Y', 'y$', opts)             -- 'Y' で行末までをコピー
keymap('n', "<C-n>", ":NeoTreeShowToggle<CR>", opts) -- 'Ctrl+n' でNeoTreeの表示切替
keymap('n', "<C-j>", ":bnext<CR>", opts) -- 'Ctrl+j' で次のバッファに移動
keymap('n', "<C-k>", ":bprev<CR>", opts) -- 'Ctrl+k' で前のバッファに移動

-- 挿入モードで自動補完
keymap('i', '{', '{}<Left>', { noremap = true })     -- '{' で '{}' を挿入しカーソルを内側に移動
keymap('i', '[', '[]<Left>', { noremap = true })     -- '[' で '[]' を挿入しカーソルを内側に移動
keymap('i', '(', '()<Left>', { noremap = true })     -- '(' で '()' を挿入しカーソルを内側に移動
keymap('i', '\"', '\"\"<Left>', { noremap = true })  -- '"' で '""' を挿入しカーソルを内側に移動
keymap('i', "'", "''<Left>", { noremap = true })     -- "'" で "''" を挿入しカーソルを内側に移動

-- ノーマルおよびビジュアルモード
keymap('', ';;', "$", opts)              -- ';;' で行末に移動
