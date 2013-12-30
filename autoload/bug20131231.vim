scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim


" bug20131231.vim が読み込まれていない状態で
" この関数を呼ぶと内部エラーが発生
" D:\home\Dropbox\work\vim\runtime\neobundle\vim-bug20131231\autoload\bug20131231.vim の処理中にエラーが検出されました:
" 行   16:
" E685: 内部エラーです: hash_add()
" 行   22:
" E121: 未定義の変数です: s:save_cpo
" E15: 無効な式です: s:save_cpo
" 行   23:
" E108: その変数はありません: "s:save_cpo"
function! bug20131231#hoge()
	
endfunction

function! s:dummy()
	
endfunction

let g:Bug20131231#funcref = function("s:dummy")

" autoload 変数ではなくてグローバル変数として定義すればエラーでない
" let g:Bug20131231_funcref = function("s:dummy")


let &cpo = s:save_cpo
unlet s:save_cpo
