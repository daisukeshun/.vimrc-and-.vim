execute pathogen#infect()

filetype plugin indent on
syntax on

set number
set tabstop=2

set hlsearch
set incsearch

let g:javascript_plugin_jsdoc = 1
autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

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
