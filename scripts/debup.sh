#!/bin/bash
path_downloads=$HOME/Downloads
last_download=$(ls -r -t $path_downloads | tail -n 1)
if [[ $last_download == *.deb ]] 
then
    echo "Arquivo .deb encontrado: $last_download"
    echo "Deseja continuar o download? (s/n)"
    read -r op
    if [[ $op == "s" ]]
    then
        echo "Download iniciado!"
        sudo apt install $path_downloads/$last_download
        echo "Deseja remover esse .deb? (s/n)"
        read -r op
        if [[ $op == "s" ]]
        then
            rm $path_downloads/$last_download
            echo "$last_download removido!"
        else
            echo "Remoção cancelada."
        fi
    else
        echo "Download cancelado."
    fi
else 
    echo "Nenhum .deb encontrado."
fi

