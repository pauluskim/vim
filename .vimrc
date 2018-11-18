" Python 파일일 경우 tab 설정, 폴딩설정
au BufRead,BufNewFile *.py set expandtab
"au BufRead,BufNewFile *.py setlocal foldmethod=indent
 
"set expandtab           " 탭을 스페이스 처리
"set tabstop=4           " 탭당 4개 스페이스
set softtabstop=4
set shiftwidth=4        " Auto indent에서 스페이스 개수
set autoindent          " Auto indent
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

 
" 백스페이스 강화
set backspace=indent,eol,start
 
set ruler               " show line and column number
set showcmd             " show (partial) command in status line
 
" Syntax Highlighting
if has("syntax")
    syntax on
endif
 
set nu                  " 라이번호
set hlsearch            " 검색어 하이라이팅
set showmatch           " 일치하는 괄호 하이라이팅
 
" Vim Color schema
colorscheme jellybeans
 
" 마지막 편집 위치 복원 기능
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
 
set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
