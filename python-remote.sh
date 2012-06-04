#! /bin/bash -i

declare -a args=()
for arg in "$@"
do
    args[${#args[@]}]="$(printf '%q' "$arg")"
done

ssh -t -i ~/.vagrant.d/insecure_private_key vagrant@192.168.33.10 \
    ". \$(type -p virtualenvwrapper.sh)
    workon emacs-remote-python
    cd /vagrant/emacs-remote-python
    python ${args[@]}"
