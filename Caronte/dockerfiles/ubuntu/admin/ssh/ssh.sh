config_ssh(){
    sed -i '$/#PermitPootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
    sed -i '$/#Port 22/Port 22/' /etc/ssh/sshd_config
    if [ ! -d /home/${USUARIO}/ssh ]
    then
        mkdir /home/${USUARIO}/.ssh
        cat /root/datos/idrsa.pub >> /home/${USUARIO}/.ssh/autorized_keys
    fi
    /etc/init.d/ssh start
}