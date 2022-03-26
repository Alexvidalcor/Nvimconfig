# ConfigNvim

Configuraciones personales empleadas en Nvim, Bash etc.

## Tutorial de instalación de configuración personal de NVIM

### Instalar nvim

Ejemplo para Debian:

```
apt install neovim
```

### Situar archivos

Carpeta nvim debe situarse en: /home/nombreusuario/.config

### Instalación de librerías complementarias

**Instalación de pip (si no estuviera instalado previamente)**

* Debian/Ubuntu

```
apt install python3-pip
```

* RHEL/Fedora Workstation

```
dnf install python-pip
```

* Fedora Silverblue
```
rpm-ostree install python-pip
```

**Instalación de paquetería adicional**

```
pip install pynvim jupyter_client ueberzug Pillow cairosvg pnglatex plotly kaleido pynvim jedi jupytext
```

### Instalación de Plug-vim

Instalación de gestor de plugins para Vim (compatible con neovim)

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Instalación de plugins

Ejecutar neovim (comando: "nvim") y lanzar los siguientes comandos dentro del editor:

```
:PlugInstall

:UpdateRemotePlugins
```

### Configuración de R para neovim

* Copiar nvimcom desde R en home a la carpeta renv del proyecto.

* Copiar jupytext-nvim

```
<!-- Dentro del directorio donde se ubica jupytext-nvim -->

cp jupytext-nvim /.local/share/nvim/site/plugin/jupytext.vim
```




