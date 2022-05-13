for x in 128 129 130
do
    sshpass -f password.txt ssh-copy-id ansible@192.168.75.$x
done

