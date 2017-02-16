set tabstop=2
set softtabstop=2
set shiftwidth=2

nnoremap <leader>ct :AsyncRun ctags -R src<space>

" restart "npm start" in the left pane
nnoremap <leader>ab :AsyncRun tmux send-keys -t 0 C-c Enter "npm run clean:prod && npm run build" Enter<cr>
nnoremap <leader>ar :AsyncRun tmux send-keys -t 0 C-c Enter "npm run watch:dev:server" Enter<cr>
nnoremap <leader>at :AsyncRun tmux send-keys -t 0 C-c Enter "npm test" Enter<cr>


" update .agignore
nnoremap <leader>ca :AsyncRun ag --hidden --ignore .git -g ngfactory.ts >> .agignore<cr>
