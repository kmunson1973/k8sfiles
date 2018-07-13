kubectl config view | grep server | cut -f 2- -d ":" | tr -d " "
