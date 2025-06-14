# dotfiles
    git clone --bare https://github.com/danielprofili/dotfiles.git $HOME/.dotfiles
    alias dotfiles="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
    dotfiles config status.showUntrackedFiles no
[Guide I used](https://web.archive.org/web/20240307132655/https://engineeringwith.kalkayan.com/series/developer-experience/storing-dotfiles-with-git-this-is-the-way/)
