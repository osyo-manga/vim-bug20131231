" bug20131231.vim が読み込まれていない状態で
" この関数を呼ぶと内部エラーが発生
" D:/vim-bug20131231/autoload/bug20131231.vim の処理中にエラーが検出されました:
" 行   12:
" E685: 内部エラーです: hash_add()
function! bug20131231#hoge()
	
endfunction

function! s:dummy()
	
endfunction

function! bug20131231#dummy()
	
endfunction

let g:Bug20131231#funcref = function("s:dummy")

" autoload 変数ではなくてグローバル変数として定義すればエラーはでない
" let g:Bug20131231_funcref = function("s:dummy")


