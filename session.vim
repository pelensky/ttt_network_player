let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <F25> :silent doautocmd FocusGained %
inoremap <silent> <F24> :silent doautocmd FocusLost %
inoremap <silent> <Plug>NERDCommenterInsert  <BS>:call NERDComment('i', "insert")
inoremap <silent> <Plug>snipMateShow =snipMate#ShowAvailableSnips()
inoremap <silent> <Plug>snipMateBack =snipMate#BackwardsSnippet()
inoremap <silent> <Plug>snipMateTrigger =snipMate#TriggerSnippet(1)
inoremap <silent> <Plug>snipMateNextOrTrigger =snipMate#TriggerSnippet()
map! <F1> 
inoremap <S-Tab> 
map! <D-v> *
vnoremap  :w !pbcopy noremap  :r !pbpaste
map p :cprevious
map n :cnext
nnoremap  h
xmap 	 <Plug>snipMateVisual
smap 	 <Plug>snipMateNextOrTrigger
nnoremap 	 
noremap <NL> :wa:!!
nnoremap  k
nnoremap  l
nnoremap  :wa:!!
map  :NERDTreeToggle
map  <Plug>(ctrlp)
nmap # #nzz
nmap * *Nzz
nmap ,ca <Plug>NERDCommenterAltDelims
xmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
xmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
xmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cA <Plug>NERDCommenterAppend
xmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
xmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
xmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
nmap ,c$ <Plug>NERDCommenterToEOL
xmap ,cn <Plug>NERDCommenterNested
nmap ,cn <Plug>NERDCommenterNested
xmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
xmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
xmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nmap ,T :!thyme -d
nnoremap ,H :%s/:\([^ ]*\)\(\s*\)=>/\1:/g
nnoremap ,p :set invpaste paste?
map ,f :Autoformat
nnoremap ,ws :StripWhitespace
nnoremap ,i gg=G``
map ,k <Plug>(easymotion-k)
map ,j <Plug>(easymotion-j)
map ,c :w:!cucumber
map ,a :call RunAllSpecs()
map ,t :call RunCurrentSpecFile()
nnoremap ,es :so $MYVIMRC
nnoremap ,ev :e $MYVIMRC
nnoremap ,q q
nnoremap ,w v1
nnoremap ,  :noh
map ,l <Plug>(easymotion-lineforward)
map ,h <Plug>(easymotion-linebackward)
map ,g :Git 
nnoremap ,. 
map ,s :call RunNearestSpec()
noremap ,rr :call OpenRailsDoc(expand('<cword>'))
noremap ,rb :call OpenRubyDoc(expand('<cword>'))
map ,F :Ag 
nmap ,te :tabedit
nmap ,tp :tabprevious
nmap ,tn :tabnext
nnoremap ,r :RunInInteractiveShell 
map ,ct :!ctags -r .
nnoremap / /\v
nnoremap == gg=G``
nmap N Nzz
xmap S <Plug>VSurround
nnoremap Y y$
nmap [xx <Plug>unimpaired_line_xml_encode
xmap [x <Plug>unimpaired_xml_encode
nmap [x <Plug>unimpaired_xml_encode
nmap [uu <Plug>unimpaired_line_url_encode
xmap [u <Plug>unimpaired_url_encode
nmap [u <Plug>unimpaired_url_encode
nmap [yy <Plug>unimpaired_line_string_encode
xmap [y <Plug>unimpaired_string_encode
nmap [y <Plug>unimpaired_string_encode
nmap [p <Plug>unimpairedPutAbove
xmap [e <Plug>unimpairedMoveSelectionUp
nmap [e <Plug>unimpairedMoveUp
nmap [  <Plug>unimpairedBlankUp
omap [n <Plug>unimpairedContextPrevious
nmap [n <Plug>unimpairedContextPrevious
nmap [o <Plug>unimpairedOPrevious
nmap [f <Plug>unimpairedDirectoryPrevious
nmap [T <Plug>unimpairedTFirst
nmap [t <Plug>unimpairedTPrevious
nmap [ <Plug>unimpairedQPFile
nmap [Q <Plug>unimpairedQFirst
nmap [q <Plug>unimpairedQPrevious
nmap [ <Plug>unimpairedLPFile
nmap [L <Plug>unimpairedLFirst
nmap [l <Plug>unimpairedLPrevious
nmap [B <Plug>unimpairedBFirst
nmap [b <Plug>unimpairedBPrevious
nmap [A <Plug>unimpairedAFirst
nmap [a <Plug>unimpairedAPrevious
vmap [% [%m'gv``
nmap ]xx <Plug>unimpaired_line_xml_decode
xmap ]x <Plug>unimpaired_xml_decode
nmap ]x <Plug>unimpaired_xml_decode
nmap ]uu <Plug>unimpaired_line_url_decode
xmap ]u <Plug>unimpaired_url_decode
nmap ]u <Plug>unimpaired_url_decode
nmap ]yy <Plug>unimpaired_line_string_decode
xmap ]y <Plug>unimpaired_string_decode
nmap ]y <Plug>unimpaired_string_decode
nmap ]p <Plug>unimpairedPutBelow
xmap ]e <Plug>unimpairedMoveSelectionDown
nmap ]e <Plug>unimpairedMoveDown
nmap ]  <Plug>unimpairedBlankDown
omap ]n <Plug>unimpairedContextNext
nmap ]n <Plug>unimpairedContextNext
nmap ]o <Plug>unimpairedONext
nmap ]f <Plug>unimpairedDirectoryNext
nmap ]T <Plug>unimpairedTLast
nmap ]t <Plug>unimpairedTNext
nmap ] <Plug>unimpairedQNFile
nmap ]Q <Plug>unimpairedQLast
nmap ]q <Plug>unimpairedQNext
nmap ] <Plug>unimpairedLNFile
nmap ]L <Plug>unimpairedLLast
nmap ]l <Plug>unimpairedLNext
nmap ]B <Plug>unimpairedBLast
nmap ]b <Plug>unimpairedBNext
nmap ]A <Plug>unimpairedALast
nmap ]a <Plug>unimpairedANext
vmap ]% ]%m'gv``
vmap a% [%v]%
nmap cS <Plug>CSurround
nmap cs <Plug>Csurround
nmap co =o
nmap cgc <Plug>ChangeCommentary
nmap ds <Plug>Dsurround
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
vmap gs <Plug>SortMotionVisual
nmap gss <Plug>SortLines
nmap gs <Plug>SortMotion
xmap gr <Plug>ReplaceWithRegisterVisual
nmap grr <Plug>ReplaceWithRegisterLine
nmap gr <Plug>ReplaceWithRegisterOperator
xmap gS <Plug>VgSurround
nmap gcu <Plug>Commentary<Plug>Commentary
nmap gcc <Plug>CommentaryLine
omap gc <Plug>Commentary
nmap gc <Plug>Commentary
xmap gc <Plug>Commentary
nnoremap j gj
nnoremap k gk
nmap n nzz
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
smap <S-Tab> <Plug>snipMateBack
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <Plug>FireplaceSource :Source 
vnoremap <silent> <F25> :silent doautocmd FocusGained %gv
vnoremap <silent> <F24> :silent doautocmd FocusLost %gv
onoremap <silent> <F25> :silent doautocmd FocusGained %
onoremap <silent> <F24> :silent doautocmd FocusLost %
nnoremap <silent> <F25> :silent doautocmd FocusGained %
nnoremap <silent> <F24> :silent doautocmd FocusLost %
map <silent> <F19>WriteAll :silent! wall
xnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("x", "Uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment("n", "Uncomment")
xnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("x", "AlignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment("n", "AlignBoth")
xnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("x", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment("n", "AlignLeft")
nnoremap <silent> <Plug>NERDCommenterAppend :call NERDComment("n", "Append")
xnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("x", "Yank")
nnoremap <silent> <Plug>NERDCommenterYank :call NERDComment("n", "Yank")
xnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("x", "Sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment("n", "Sexy")
xnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("x", "Invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment("n", "Invert")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment("n", "ToEOL")
xnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("x", "Nested")
nnoremap <silent> <Plug>NERDCommenterNested :call NERDComment("n", "Nested")
xnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("x", "Minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment("n", "Minimal")
xnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("x", "Toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment("n", "Toggle")
xnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("x", "Comment")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment("n", "Comment")
snoremap <silent> <Plug>snipMateBack a=snipMate#BackwardsSnippet()
snoremap <silent> <Plug>snipMateNextOrTrigger a=snipMate#TriggerSnippet()
noremap <SNR>54_DashGlobalSearch :Dash!
noremap <SNR>54_DashSearch :Dash
nnoremap <silent> <Plug>ReplaceWithRegisterVisual :call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|execute 'normal!' ReplaceWithRegister#VisualMode()|call ReplaceWithRegister#Operator('visual', "\<Plug>ReplaceWithRegisterVisual")
vnoremap <silent> <Plug>ReplaceWithRegisterVisual :call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<Plug>ReplaceWithRegisterVisual", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|call ReplaceWithRegister#Operator('visual', "\<Plug>ReplaceWithRegisterVisual")
nnoremap <silent> <Plug>ReplaceWithRegisterLine :call setline('.', getline('.'))|execute 'silent! call repeat#setreg("\<Plug>ReplaceWithRegisterLine", v:register)'|call ReplaceWithRegister#SetRegister()|if ReplaceWithRegister#IsExprReg()|    let g:ReplaceWithRegister_expr = getreg('=')|endif|execute 'normal! V' . v:count1 . "_\<Esc>"|call ReplaceWithRegister#Operator('visual', "\<Plug>ReplaceWithRegisterLine")
nnoremap <silent> <Plug>ReplaceWithRegisterExpressionSpecial :let g:ReplaceWithRegister_expr = getreg('=')|execute 'normal!' v:count1 . '.'
nnoremap <expr> <Plug>ReplaceWithRegisterOperator ReplaceWithRegister#OperatorExpression()
nnoremap <silent> <Plug>SurroundRepeat .
nmap <silent> <Plug>unimpairedOPrevious <Plug>unimpairedDirectoryPrevious:echohl WarningMSG|echo "[o is deprecated. Use [f"|echohl NONE
nmap <silent> <Plug>unimpairedONext <Plug>unimpairedDirectoryNext:echohl WarningMSG|echo "]o is deprecated. Use ]f"|echohl NONE
nnoremap <silent> <Plug>unimpairedTLast :exe "".(v:count ? v:count : "")."tlast"
nnoremap <silent> <Plug>unimpairedTFirst :exe "".(v:count ? v:count : "")."tfirst"
nnoremap <silent> <Plug>unimpairedTNext :exe "".(v:count ? v:count : "")."tnext"
nnoremap <silent> <Plug>unimpairedTPrevious :exe "".(v:count ? v:count : "")."tprevious"
nnoremap <silent> <Plug>unimpairedQNFile :exe "".(v:count ? v:count : "")."cnfile"zv
nnoremap <silent> <Plug>unimpairedQPFile :exe "".(v:count ? v:count : "")."cpfile"zv
nnoremap <silent> <Plug>unimpairedQLast :exe "".(v:count ? v:count : "")."clast"zv
nnoremap <silent> <Plug>unimpairedQFirst :exe "".(v:count ? v:count : "")."cfirst"zv
nnoremap <silent> <Plug>unimpairedQNext :exe "".(v:count ? v:count : "")."cnext"zv
nnoremap <silent> <Plug>unimpairedQPrevious :exe "".(v:count ? v:count : "")."cprevious"zv
nnoremap <silent> <Plug>unimpairedLNFile :exe "".(v:count ? v:count : "")."lnfile"zv
nnoremap <silent> <Plug>unimpairedLPFile :exe "".(v:count ? v:count : "")."lpfile"zv
nnoremap <silent> <Plug>unimpairedLLast :exe "".(v:count ? v:count : "")."llast"zv
nnoremap <silent> <Plug>unimpairedLFirst :exe "".(v:count ? v:count : "")."lfirst"zv
nnoremap <silent> <Plug>unimpairedLNext :exe "".(v:count ? v:count : "")."lnext"zv
nnoremap <silent> <Plug>unimpairedLPrevious :exe "".(v:count ? v:count : "")."lprevious"zv
nnoremap <silent> <Plug>unimpairedBLast :exe "".(v:count ? v:count : "")."blast"
nnoremap <silent> <Plug>unimpairedBFirst :exe "".(v:count ? v:count : "")."bfirst"
nnoremap <silent> <Plug>unimpairedBNext :exe "".(v:count ? v:count : "")."bnext"
nnoremap <silent> <Plug>unimpairedBPrevious :exe "".(v:count ? v:count : "")."bprevious"
nnoremap <silent> <Plug>unimpairedALast :exe "".(v:count ? v:count : "")."last"
nnoremap <silent> <Plug>unimpairedAFirst :exe "".(v:count ? v:count : "")."first"
nnoremap <silent> <Plug>unimpairedANext :exe "".(v:count ? v:count : "")."next"
nnoremap <silent> <Plug>unimpairedAPrevious :exe "".(v:count ? v:count : "")."previous"
nnoremap <SNR>47_: :=v:count ? v:count : ''
nmap <silent> <Plug>CommentaryUndo <Plug>Commentary<Plug>Commentary
nnoremap <silent> <Plug>(ctrlp) :CtrlP
nnoremap <S-Tab> W
nmap <F1> 
vmap <BS> "-d
vmap <D-x> "*d
vmap <D-c> "*y
vmap <D-v> "-d"*P
nmap <D-v> "*P
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap 	 =InsertTabWrapper()
imap  <Plug>DiscretionaryEnd
imap 	 <Plug>snipMateShow
imap  <Plug>Isurround
cnoremap %s/ %s/\v
imap ,p :set invpaste paste?
inoremap { {}O
cabbr rename =getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"
cabbr grtoggle GoldenRatioToggle
cabbr grresize GoldenRatioResize
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autowrite
set background=dark
set backspace=2
set clipboard=unnamed
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set incsearch
set laststatus=2
set listchars=tab:»·,trail:·,nbsp:·
set pastetoggle=,p
set ruler
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-ruby,~/.vim/bundle/vim-rspec,~/.vim/bundle/vim-easy-align,~/.vim/bundle/splitjoin.vim,~/.vim/bundle/vim-run-interactive,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/vim-mkdir,~/.vim/bundle/syntastic,~/.vim/bundle/vim-bundler,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-eunuch,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-flavored-markdown,~/.vim/bundle/ctags.vim,~/.vim/bundle/matchit.zip,~/.vim/bundle/ReplaceWithRegister,~/.vim/bundle/dash.vim,~/.vim/bundle/vim-autotag,~/.vim/bundle/rainbow_parentheses.vim,~/.vim/bundle/rainbow,~/.vim/bundle/Sierra,~/.vim/bundle/vim-addon-mw-utils,~/.vim/bundle/tlib_vim,~/.vim/bundle/vim-snipmate,~/.vim/bundle/vim-snippets,~/.vim/bundle/vim-javascript,~/.vim/bundle/ag.vim,~/.vim/bundle/vim-airline,~/.vim/bundle/golden-ratio,~/.vim/bundle/nerdtree,~/.vim/bundle/nerdcomment
set scrolloff=3
set shell=/bin/sh
set shiftround
set shiftwidth=2
set showmatch
set smarttab
set spelllang=en_gb
set splitbelow
set splitright
set noswapfile
set tabstop=2
set textwidth=80
set updatetime=500
set wildmenu
set wildmode=list:longest,list:full
set window=52
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Library/Mobile\ Documents/com~apple~CloudDocs/Projects/8th\ Light/clojure/tic_tac_toe
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 spec/tic_tac_toe/board_spec.clj
badd +0 src/tic_tac_toe/board.clj
badd +0 spec/tic_tac_toe/app_runner_spec.clj
badd +0 src/tic_tac_toe/app_runner.clj
badd +0 spec/tic_tac_toe/player_type_spec.clj
badd +0 src/tic_tac_toe/player_type.clj
badd +0 spec/tic_tac_toe/input_spec.clj
badd +0 src/tic_tac_toe/input.clj
badd +0 spec/tic_tac_toe/output_spec.clj
badd +0 src/tic_tac_toe/output.clj
badd +0 spec/tic_tac_toe/human_spec.clj
badd +0 src/tic_tac_toe/human.clj
badd +12 spec/tic_tac_toe/random_computer_spec.clj
badd +9 src/tic_tac_toe/random_computer.clj
argglobal
silent! argdel *
$argadd spec/tic_tac_toe/board_spec.clj
set stal=2
edit spec/tic_tac_toe/board_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
edit src/tic_tac_toe/board.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 26) / 52)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 06|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabedit spec/tic_tac_toe/app_runner_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((49 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 013|
wincmd w
argglobal
edit src/tic_tac_toe/app_runner.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 21 - ((20 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 04|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabedit spec/tic_tac_toe/player_type_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((16 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 039|
wincmd w
argglobal
edit src/tic_tac_toe/player_type.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 012|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabedit spec/tic_tac_toe/input_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
wincmd w
argglobal
edit src/tic_tac_toe/input.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabedit spec/tic_tac_toe/output_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 15 - ((14 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 075|
wincmd w
argglobal
edit src/tic_tac_toe/output.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 47 - ((40 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 025|
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabedit spec/tic_tac_toe/human_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 021|
wincmd w
argglobal
edit src/tic_tac_toe/human.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabedit spec/tic_tac_toe/random_computer_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
argglobal
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 027|
wincmd w
argglobal
edit src/tic_tac_toe/random_computer.clj
let s:cpo_save=&cpo
set cpo&vim
inoremap <buffer> <expr> <Del> PareditDel()
inoremap <buffer> <expr> <BS> PareditBackspace(0)
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
vnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',1)
nnoremap <buffer> <silent> ( :call PareditFindOpening('(',')',0)
vnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',1)
nnoremap <buffer> <silent> ) :call PareditFindClosing('(',')',0)
nnoremap <buffer> <silent> ,S :call PareditSplice()|silent! call repeat#set(",S")
vnoremap <buffer> <silent> ,W :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,W :call PareditWrap("(",")")|silent! call repeat#set(",W")
nnoremap <buffer> <silent> ,J :call PareditJoin()|silent! call repeat#set(",J")
nnoremap <buffer> <silent> ,O :call PareditSplit()|silent! call repeat#set(",O")
nnoremap <buffer> <silent> ,> :call PareditMoveRight()|silent! call repeat#set(",>")
nnoremap <buffer> <silent> ,< :call PareditMoveLeft()|silent! call repeat#set(",\<")
vnoremap <buffer> <silent> ,w{ :call PareditWrapSelection("{","}")
nnoremap <buffer> <silent> ,w{ :call PareditWrap("{","}")|silent! call repeat#set(",w{")
vnoremap <buffer> <silent> ,w[ :call PareditWrapSelection("[","]")
nnoremap <buffer> <silent> ,w[ :call PareditWrap("[","]")|silent! call repeat#set(",w[")
nnoremap <buffer> <silent> ,I :call PareditRaise()|silent! call repeat#set(",I")
nmap <buffer> <silent> ,<Down> d])%,S
nmap <buffer> <silent> ,<Up> d[(,S
vnoremap <buffer> <silent> ,w" :call PareditWrapSelection('"','"')
nnoremap <buffer> <silent> ,w" :call PareditWrap('"','"')|silent! call repeat#set(",w\"")
vnoremap <buffer> <silent> ,w( :call PareditWrapSelection("(",")")
nnoremap <buffer> <silent> ,w( :call PareditWrap("(",")")|silent! call repeat#set(",w(")
nnoremap <buffer> <silent> C v$:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> D v$:call PareditDelete(visualmode(),1)|silent! call repeat#set("D")
nmap <buffer> K <Plug>FireplaceK
nnoremap <buffer> <silent> P :call PareditPut("P")|silent! call repeat#set("P")
nnoremap <buffer> <silent> S V:call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> X :call PareditEraseBck()|silent! call repeat#set("X")
nnoremap <buffer> <silent> [[ :call PareditFindDefunBck()
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nnoremap <buffer> <silent> ]] :call PareditFindDefunFwd()
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
nnoremap <buffer> <silent> caw :call PareditChangeSpec('caw',1)
nnoremap <buffer> <silent> ciw :call PareditChangeSpec('ciw',1)
nnoremap <buffer> <silent> cb :call PareditChangeSpec('cb',0)
nnoremap <buffer> <silent> cW :set opfunc=PareditChangeg@E
nnoremap <buffer> <silent> cw :call PareditChangeSpec('cw',1)
nnoremap <buffer> <silent> cc :call PareditChangeLines()
vnoremap <buffer> <silent> c :call PareditChange(visualmode(),1)
nnoremap <buffer> <silent> c :set opfunc=PareditChangeg@
nmap <buffer> cqc <Plug>FireplacePrompti
nmap <buffer> cqp <Plug>FireplacePrompt
nmap <buffer> cqq <Plug>FireplaceCountEdit
nmap <buffer> cq <Plug>FireplaceEdit
nmap <buffer> c1mm <Plug>FireplaceCount1MacroExpand
nmap <buffer> c1m <Plug>Fireplace1MacroExpand
nmap <buffer> cmm <Plug>FireplaceCountMacroExpand
nmap <buffer> cm <Plug>FireplaceMacroExpand
nmap <buffer> c!! <Plug>FireplaceCountFilter
nmap <buffer> c! <Plug>FireplaceFilter
nmap <buffer> cpp <Plug>FireplaceCountPrint
nmap <buffer> cp <Plug>FireplacePrint
nnoremap <buffer> <silent> dd :call PareditDeleteLines()|silent! call repeat#set("dd")
vnoremap <buffer> <silent> d :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> d :call PareditSetDelete(v:count)g@
nmap <buffer> gf <Plug>FireplaceEditFile
nnoremap <buffer> <silent> p :call PareditPut("p")|silent! call repeat#set("p")
nnoremap <buffer> <silent> s :call PareditEraseFwd()i
vnoremap <buffer> <silent> x :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> x :call PareditEraseFwd()|silent! call repeat#set("x")
vnoremap <buffer> <silent> <Del> :call PareditDelete(visualmode(),1)
nnoremap <buffer> <silent> <Del> :call PareditEraseFwd()
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
inoremap <buffer> <expr> " PareditInsertQuotes()
inoremap <buffer> <expr> ( PareditInsertOpening('(',')')
inoremap <buffer> <silent> ) =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('(',')'):let &ve=save_ve
inoremap <buffer> <expr> [ PareditInsertOpening('[',']')
inoremap <buffer> <silent> ] =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('[',']'):let &ve=save_ve
inoremap <buffer> <expr> { PareditInsertOpening('{','}')
inoremap <buffer> <silent> } =(pumvisible() ? "\<C-Y>" : ""):let save_ve=&ve:set ve=all:call PareditInsertClosing('{','}'):let &ve=save_ve
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
set colorcolumn=+2
setlocal colorcolumn=+2
setlocal comments=n:;
setlocal commentstring=;\ %s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=clojurecomplete#Complete
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=^\\s*(def\\w*
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'clojure'
setlocal filetype=clojure
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=fireplace#format(v:lnum,v:count,v:char)
setlocal formatoptions=cq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=0
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetClojureIndent()
setlocal indentkeys=!,o,O
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,?,-,*,!,+,/,=,<,>,.,:,$
setlocal keywordprg=:Doc
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=as->,binding,bound-fn,case,catch,cond->,cond->>,condp,def,definline,definterface,defmacro,defmethod,defmulti,defn,defn-,defonce,defprotocol,defrecord,defstruct,deftest,deftest-,deftype,doseq,dotimes,doto,extend,extend-protocol,extend-type,fn,for,if,if-let,if-not,if-some,let,letfn,locking,loop,ns,proxy,reify,set-test,testing,when,when-first,when-let,when-not,when-some,while,with-bindings,with-in-str,with-local-vars,with-open,with-precision,with-redefs,with-redefs-fn,with-test
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=fireplace#omnicomplete
setlocal path=~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/spec,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/src,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/dev-resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/resources,~/Library/Mobile\\\ Documents/com~apple~CloudDocs/Projects/8th\\\ Light/clojure/tic_tac_toe/target/classes,~/.m2/repository/org/clojure/clojure/1.8.0/clojure-1.8.0.jar,~/.m2/repository/org/clojure/tools.nrepl/0.2.12/tools.nrepl-0.2.12.jar,~/.m2/repository/clojure-complete/clojure-complete/0.2.4/clojure-complete-0.2.4.jar,~/.m2/repository/speclj/speclj/3.3.2/speclj-3.3.2.jar,~/.m2/repository/fresh/fresh/1.1.2/fresh-1.1.2.jar,~/.m2/repository/mmargs/mmargs/1.2.0/mmargs-1.2.0.jar,~/.m2/repository/trptcolin/versioneer/0.1.1/versioneer-0.1.1.jar
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norelativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal signcolumn=auto
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_gb
setlocal statusline=%!airline#statusline(2)
setlocal suffixesadd=.clj,.cljc,.cljx,.cljs,.java
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'clojure'
setlocal syntax=clojure
endif
setlocal tabstop=2
setlocal tagcase=
setlocal tags=
setlocal textwidth=80
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 25) / 50)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 014|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 157) / 314)
exe 'vert 2resize ' . ((&columns * 194 + 157) / 314)
tabnext 7
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
