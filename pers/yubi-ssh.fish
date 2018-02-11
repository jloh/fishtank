function yubi-ssh
    set -lx SSH_AUTH_SOCK $HOME/.gnupg/S.gpg-agent.ssh
    ssh -o ControlMaster=no $argv
end
