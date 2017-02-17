set tabstop=2
set softtabstop=2
set shiftwidth=2

nnoremap <leader>ct :AsyncRun ctags -R src<space>

" restart "npm start" in the left pane
nnoremap <leader>ab :AsyncRun tmux send-keys -t 0 C-c Enter "npm run clean:prod && npm run build" Enter<cr>
nnoremap <leader>ar :AsyncRun tmux send-keys -t 0 C-c Enter "npm run watch:dev:server" Enter<cr>
nnoremap <leader>at :AsyncRun tmux send-keys -t 0 C-c Enter "npm test" Enter<cr>
nnoremap <leader>as :AsyncRun tmux send-keys -t 0 C-c Enter "npm start" Enter<cr>


" update .agignore
nnoremap <leader>ca :AsyncRun ag --hidden --ignore .git -g ngfactory.ts >> .agignore<cr>


" trick for replacing the relative import path
" 
" example - input: (cursor on the second line)
"     import { Item } from "../../shared/item.model";
"     src/app/core/shared/item.model.ts
"
" example - output:
"     import { Item } from "../core/shared/item.model"; 
nnoremap <leader>fro :s:^\s*<cr>o<esc>"%p-<c-v>jI'<esc><c-v>j$A'<esc>Ji,<esc>A)<esc>Iimport os.path; print os.path.relpath(<esc>V:!python<cr>:s:\.ts<cr>3xd$-vi"pJ
" same but when the imports are single quoted
nnoremap <leader>fr0 :s:^\s*<cr>o<esc>"%p-<c-v>jI'<esc><c-v>j$A'<esc>Ji,<esc>A)<esc>Iimport os.path; print os.path.relpath(<esc>V:!python<cr>:s:\.ts<cr>3xd$-vi'pJ
