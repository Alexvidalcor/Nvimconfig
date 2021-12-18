
" ---------------------------------------

"PLUGINS

" Insertar aquí los plugins a instalar
call plug#begin()

" Plugin para convertir neovim en IDE de R
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

" Plugin para habilitar explorador de archivos
Plug 'preservim/nerdtree'

" Habilita el autocompletado en múltiples lenguajes
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Complementa el plugin 'deoplete' para el lenguaje Python
Plug 'zchee/deoplete-jedi'

" Plugin para colorear/tematizar la barra de estado inferior
Plug 'vim-airline/vim-airline'

" Añade soporte de temas al plugin 'airline'
Plug 'vim-airline/vim-airline-themes'

" Habilita comandos para comentar y descomentar rápidamente en múltiples lenguajes
Plug 'scrooloose/nerdcommenter'

" Habilita el formateo de código en múltiples lenguajes
Plug 'sbdchd/neoformat'

" Habilita el formateo de Python para neovim. Útil si se integra con otros plugins como 'neoformat
Plug 'davidhalter/jedi-vim'

" Chequeador de código, se apoya en linters como 'PyLint'
Plug 'neomake/neomake'

" Tema para neovim
Plug 'morhetz/gruvbox'

" Subraya el texto 'yankeado'
Plug 'machakann/vim-highlightedyank'

" Abre y cierra trozos de códigos como funciones para mejorar la legibilidad
Plug 'tmhedberg/SimpylFold'

" Coloreado de sintaxis para múltiples lenguajes como Python
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Plugin para autocompletar cierre de paréntesis, comillas etc.
Plug 'jiangmiao/auto-pairs'

call plug#end()

" ---------------------------------------

"TEMAS Y COLORES (Personalización)

" Tema por defecto al arrancar nvim. Disponibles: "southernlights", "gruvbox"
colorscheme gruvbox

" Habilitar el coloreado de sintaxis
syntax on

" ---------------------------------------

" GRUVBOX (Tema general de neovim)
 
" Modifica el fondo de pantalla de Gruvbox a negro puro
if g:colors_name == "gruvbox"
	highlight Normal ctermbg=16 guibg=#000000
endif

" ---------------------------------------

" AIRLINE-THEMES (Tema de Airline)

" Posiciona 'gruvbox' como tema de referencia para el plugin 'airline'
let g:airline_theme='wombat'

" Activa la tematización en la visualización de buffers
let g:airline#extensions#tabline#enabled = 1

" Establece el símbolo indicado como separador entre buffers
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_alt_sep = '|'

"Elige tema para ver los buffers. Se previsualizacn desde la página de 'airline'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Excluye visualizaciones de buffer de los tipos especificados. Lista original de la documentación de 'airline', pero se saca '!' y 'term://' para ver terminales en buffer.
let g:airline#extensions#tabline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'

" Semicorrige un bug de Neovim que elimina el terminal al cambiar entre buffers. Se establece a nivel global.
set hidden

" ---------------------------------------

" DEOPLATE (Autocompletado general)

" Arrancar Deoplate al inicio de neovim
let g:deoplete#enable_at_startup = 1

" ---------------------------------------

" NERDTREE (Explorador de archivos)

" Arranca NERDTree al iniciar neovim y deja el cursor sobre él.
" autocmd VimEnter * NERDTree

" Oculta el icono '?' encima del explorador de archivos
let NERDTreeMinimalUI=1

" ---------------------------------------

" JEDI-VIM (Autocompletado para Python)

" Deshabilita autocompletado, porque se usa 'deoplete' para el completado
let g:jedi#completions_enabled = 0

" Abre la función "go-to" en pantalla dividida, no en otro buffer
let g:jedi#use_splits_not_buffers = "right"

" ---------------------------------------

" NEOMAKE (Chequeador de código)

" Habilita 'PyLint' como linter predeterminado para Python. Es más lento que 'Flake8', sobre todo con chequeo automático habilitado.
let g:neomake_python_enabled_makers = ['pylint']

" Configura el chequeo de código automático sin necesidad de invocar manualmente el comando 'Neomake'
call neomake#configure#automake('nrwi', 500)

" ---------------------------------------

" NVIM-R (IDE de R)

" Abre el terminal de R fuera de neovim, en un terminal independiente
" let R_external_term = 1

" Arranca 'NvimR' al abrir cualquier archivo .R con neovim
" let R_auto_start = 2

" Habilita la visualización de dataframes con 'visidata
let R_csv_app = 'terminal:vd'

" ---------------------------------------

" OPCIONALES (Neovim)

" Mapea ',' como Leader
" let mapleader=","

" Mapea 'jj' para entrar en modo normal
" inoremap jj <Esc>

" Habilita barra numerada de líneas en el lado izquierdo de la ventana de neovim
set number

" Mapea ',' como Local Leader para plugins como NvimR
let maplocalleader=","

" Mapeo de ESC para entrar en modo normal en modo terminal
:tnoremap <Esc> <C-\><C-n>

" Habilita el soporte para ratón para redimensionar paneles, seleccionar
set mouse=a

" ---------------------------------------


