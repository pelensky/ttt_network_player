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
map  a
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
omap ar <Plug>(textobj-rubyblock-a)
xmap ar <Plug>(textobj-rubyblock-a)
omap ae <Plug>(textobj-entire-a)
xmap ae <Plug>(textobj-entire-a)
omap al <Plug>(textobj-line-a)
xmap al <Plug>(textobj-line-a)
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
omap ir <Plug>(textobj-rubyblock-i)
xmap ir <Plug>(textobj-rubyblock-i)
omap ie <Plug>(textobj-entire-i)
xmap ie <Plug>(textobj-entire-i)
omap il <Plug>(textobj-line-i)
xmap il <Plug>(textobj-line-i)
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
onoremap <silent> <Plug>(textobj-rubyblock-i) :call g:__textobj_rubyblock.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-rubyblock-i) :call g:__textobj_rubyblock.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-rubyblock-a) :call g:__textobj_rubyblock.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-rubyblock-a) :call g:__textobj_rubyblock.do_by_function("select-a","-","v")
onoremap <silent> <Plug>(textobj-entire-i) :call g:__textobj_entire.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-entire-i) :call g:__textobj_entire.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-entire-a) :call g:__textobj_entire.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-entire-a) :call g:__textobj_entire.do_by_function("select-a","-","v")
onoremap <silent> <Plug>(textobj-line-i) :call g:__textobj_line.do_by_function("select-i","-","o")
vnoremap <silent> <Plug>(textobj-line-i) :call g:__textobj_line.do_by_function("select-i","-","v")
onoremap <silent> <Plug>(textobj-line-a) :call g:__textobj_line.do_by_function("select-a","-","o")
vnoremap <silent> <Plug>(textobj-line-a) :call g:__textobj_line.do_by_function("select-a","-","v")
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
imap <silent> [6~ <PageDown>
imap <silent> [5~ <PageUp>
imap <silent> OF <End>
imap <silent> OH <Home>
imap <silent> OD <Left>
imap <silent> OC <Right>
imap <silent> OB <Down>
imap <silent> OA <Up>
inoremap  =GetCloseTag()
cnoremap %s/ %s/\v
imap ,p :set invpaste paste?
inoremap jj 
inoremap kk :wa | :echo "it's cool, you saved all the things" 
inoremap { {}O
cabbr rename =getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"
cabbr grtoggle GoldenRatioToggle
cabbr grresize GoldenRatioResize
let &cpo=s:cpo_save
unlet s:cpo_save
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
set runtimepath=~/.vim,~/.vim/bundle/Vundle.vim,~/.vim/bundle/vim-ruby,~/.vim/bundle/vim-rspec,~/.vim/bundle/vim-easy-align,~/.vim/bundle/splitjoin.vim,~/.vim/bundle/vim-run-interactive,~/.vim/bundle/vim-coffee-script,~/.vim/bundle/ctrlp.vim,~/.vim/bundle/vim-mkdir,~/.vim/bundle/syntastic,~/.vim/bundle/vim-bundler,~/.vim/bundle/vim-commentary,~/.vim/bundle/vim-endwise,~/.vim/bundle/vim-eunuch,~/.vim/bundle/vim-fugitive,~/.vim/bundle/vim-rails,~/.vim/bundle/vim-repeat,~/.vim/bundle/vim-unimpaired,~/.vim/bundle/vim-surround,~/.vim/bundle/vim-flavored-markdown,~/.vim/bundle/ctags.vim,~/.vim/bundle/matchit.zip,~/.vim/bundle/ReplaceWithRegister,~/.vim/bundle/dash.vim,~/.vim/bundle/vim-clojure-static,~/.vim/bundle/vim-autotag,~/.vim/bundle/rainbow_parentheses.vim,~/.vim/bundle/rainbow,~/.vim/bundle/Sierra,~/.vim/bundle/vim-addon-mw-utils,~/.vim/bundle/tlib_vim,~/.vim/bundle/vim-snipmate,~/.vim/bundle/vim-snippets,~/.vim/bundle/vim-javascript,~/.vim/bundle/ag.vim,~/.vim/bundle/vim-airline,~/.vim/bundle/golden-ratio,~/.vim/bundle/n
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
set window=47
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
badd +0 spec/tic_tac_toe/input_spec.clj
badd +0 src/tic_tac_toe/input.clj
badd +0 spec/tic_tac_toe/output_spec.clj
badd +0 src/tic_tac_toe/output.clj
badd +0 spec/tic_tac_toe/human_spec.clj
badd +0 src/tic_tac_toe/human.clj
badd +0 spec/tic_tac_toe/player_type_spec.clj
badd +0 src/tic_tac_toe/player_type.clj
badd +0 spec/tic_tac_toe/random_computer_spec.clj
badd +0 src/tic_tac_toe/random_computer.clj
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
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
let s:l = 6 - ((5 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
edit src/tic_tac_toe/board.clj
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
let s:l = 15 - ((14 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
15
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
tabedit spec/tic_tac_toe/app_runner_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 53 - ((44 * winheight(0) + 22) / 45)
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
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal statusline=%!airline#statusline(3)
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
let s:l = 20 - ((19 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
20
normal! 025|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
tabedit spec/tic_tac_toe/player_type_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 195 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 120 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 17 - ((11 * winheight(0) + 23) / 46)
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
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 012|
wincmd w
exe 'vert 1resize ' . ((&columns * 195 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 120 + 158) / 316)
tabedit spec/tic_tac_toe/human_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
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
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
tabedit spec/tic_tac_toe/random_computer_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 195 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 120 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 22) / 45)
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
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 042|
wincmd w
exe 'vert 1resize ' . ((&columns * 195 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 120 + 158) / 316)
tabedit spec/tic_tac_toe/input_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 195 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 120 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 23) / 46)
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
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 195 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 120 + 158) / 316)
tabedit spec/tic_tac_toe/output_spec.clj
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
argglobal
let s:cpo_save=&cpo
set cpo&vim
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
let s:l = 15 - ((8 * winheight(0) + 23) / 46)
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
smap <buffer> ( <Plug>FireplaceRecall
nmap <buffer> gf <Plug>FireplaceTabeditFile
nmap <buffer>  <Plug>FireplaceSplitFile
nmap <buffer> f <Plug>FireplaceSplitFile
nmap <buffer> gd <Plug>FireplaceDtabjump
nmap <buffer> d <Plug>FireplaceDsplit
nmap <buffer>  <Plug>FireplaceDsplit
xnoremap <buffer> <silent> ,a} `>a}`<i{
xnoremap <buffer> <silent> ,a{ `>a}`<i{
xnoremap <buffer> <silent> ,a) `>a)`<i(
xnoremap <buffer> <silent> ,a( `>a)`<i(
xnoremap <buffer> <silent> ,a' `>a'`<i'
xnoremap <buffer> <silent> ,a] `>a]`<i[
xnoremap <buffer> <silent> ,a[ `>a]`<i[
xnoremap <buffer> <silent> ,a" `>a"`<i"
xnoremap <buffer> <silent> ,a` `>a``<i`
nmap <buffer> K <Plug>FireplaceK
nmap <buffer> [d <Plug>FireplaceSource
nmap <buffer> [ <Plug>FireplaceDjump
nmap <buffer> ]d <Plug>FireplaceSource
nmap <buffer> ] <Plug>FireplaceDjump
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
nmap <buffer> gf <Plug>FireplaceEditFile
cmap <buffer>  <Plug><cpath>
cmap <buffer>  <Plug><cfile>
cmap <buffer> ( <Plug>FireplaceRecall
imap <buffer> ( <Plug>FireplaceRecall
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal autoindent
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
setlocal lispwords=def,def-,defn,defn-,defmacro,defmacro-,defmethod,defmulti,defonce,defvar,defvar-,defunbound,let,fn,letfn,binding,proxy,defnk,if,if-not,if-let,when,when-not,when-let,when-first,cond,condp,loop,dotimes,for,while,do,doto,try,catch,locking,with-in-str,with-out-str,with-open,dosync,with-local-vars,doseq,dorun,doall,->,future,ns,clojure.core/ns,gen-class,gen-interface
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
setlocal path=
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
let s:l = 47 - ((32 * winheight(0) + 23) / 46)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 080|
wincmd w
exe 'vert 1resize ' . ((&columns * 120 + 158) / 316)
exe 'vert 2resize ' . ((&columns * 195 + 158) / 316)
tabnext 2
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
