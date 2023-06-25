# Nvimconfig

Personal settings used in Neovim, Bash and Tmux.

## Custom Neovim Installation Tutorial

### Install NVIM

Example for Debian:

```
apt install neovim
```

### Place files

Nvim folder should be placed at: /home/nameuser/.config

### Installation of complementary libraries

**PIP installation (if not previously installed)**

* Debian/Ubuntu

```
apt install python3-pip
```

* Rhel/Fedora Workstation

```
dnf install python-pip
```

* Fedora Silverblue
```
rpm-ostree install python-pip
```

**Additional package installation**

```
pip install pynvim jupyter_client ueberzug Pillow cairosvg pnglatex plotly kaleido pynvim jedi jupytext
```

### Plug-Vim installation

Installation of Plugins Manager for Vim (compatible with Neovim):

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Plugins installation

Execute neovim (command: "nvim") and launch the following commands within the editor:

```
:PlugInstall

:UpdateRemotePlugins
```

---

### Additional details

**If a R virtual environment (renv) is used in the project**

* Copy nvimcom from R to Home to the Renv folder of the project.

**If a Python Jupyter Notebook is going to be used in the project**

* Copy jupytext-nvim

```
<!-Within the directory where jupytext-nvim is located->

CP Jupytext-nvim /.local/share/nvim/site/plugin/jupytext.vim
```




