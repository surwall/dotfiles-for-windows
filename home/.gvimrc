set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set guifont=JetBrains_Mono:h13

" File compatibility and configuration issues
set nobackup

" ***********************display***************************
set guioptions-=T " hide Toobar (only in windows)
set guioptions-=m " hide Menu Bar
set guioptions-=L " hide Left scrollbar
set guioptions-=r " hide Right scrollbar
set guioptions-=b " hide Bottom scrollbar
" 使用内置样式而不是gui
set guioptions-=e
set nolist

" using powershell not cmd
set shell=C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe

" stop triggering the \"HIT ENTER" prompt
" silent !echo Hello
