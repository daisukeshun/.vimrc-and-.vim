execute pathogen#infect()

colo vividchalk
filetype plugin indent on
syntax on

set number
set tabstop=4
set shiftwidth=4	 
set softtabstop=4

set hlsearch
set incsearch

autocmd vimenter * NERDTree

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

map <C-n> :NERDTreeToggle<CR>
map <C-т> :NERDTreeToggle<CR>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

map <silent> <C-р> :call WinMove('h')<CR>
map <silent> <C-о> :call WinMove('j')<CR>
map <silent> <C-л> :call WinMove('k')<CR>
map <silent> <C-д> :call WinMove('l')<CR>

function! WinMove(key) 
				let t:curwin = winnr()
				exec "wincmd ".a:key
				if(t:curwin == winnr())
								if (match(a:key, '[jk]'))
												wincmd v
								else 
												wincmd s
								endif
							 exec "wincmd ".a:key
			 endif
		endfunction		
	
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
