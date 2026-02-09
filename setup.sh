echo "[BASH] Setting up bash"
cp .bashrc ~/.bashrc
source ~/.bashrc
echo "[BASH] Done setting up bash"

echo "[TMUX] Setting up tmux"
cp .tmux.conf ~/.tmux.conf
pkill tmux
echo "[TMUX] Done setting up tmux"
