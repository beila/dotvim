" https://github.com/junegunn/fzf.vim#user-content-example-advanced-ripgrep-integration
"function! RipgrepFzf(query, fullscreen)
  "" {q} from reload_command always comes with enclosing quote 'blah'
  "" Thus, https://stackoverflow.com/a/6988363
  "let command_fmt = 'rg.exe --column --line-number --no-heading --color=always --smart-case %s'
  "let initial_command = printf(command_fmt, shellescape(a:query))
  "let reload_command = printf(command_fmt, '{q}')
  "let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  "call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
"endfunction

"command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)
"command! -nargs=* -bang Rgi call RipgrepFzf(<q-args>, <bang>0)

