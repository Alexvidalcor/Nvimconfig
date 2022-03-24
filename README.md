# ConfigNvim
Configuraciones empleadas en Nvim, Bash etc.

## Tutorial de instalación

### Situar archivos

Carpeta nvim debe situarse en /home/<username>/.config

### Instalación de librerías complementarias

* Instalación de pip si no estuviera, el:

Debian/Ubuntu --> apt install python3-pip
RHEL/Fedora --> dnf install python-pip
Fedora Silverblue --> rpm-ostree install pythonpip

* Instalación de paquetería
pip install pynvim
pip install jedi

pip install jupytext
pip install pynvim jupyter_client ueberzug Pillow cairosvg pnglatex plotly kaleido

### Instalación de Plug-vim

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


### Instalación de plugins

:PlugInstall

:UpdateRemotePlugins

### Configuración de R para neovim

* Copiar nvimcom desde R en home a la carpeta renv del proyecto.

* copiar jupytext-nvim --> /.local/share/nvim/site/plugin/jupytext.vim




