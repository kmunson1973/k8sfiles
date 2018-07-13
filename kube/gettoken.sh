kubectl describe secret $(kubectl get secrets | grep portworx | awk '{ print $1}') | grep token |awk {'print $2'}
#kubectl describe secret $(kubectl get secrets | grep default | cut -f3 -d ' ') | grep -E '^token' | cut -f2 -d':' | tr -d '\t' 
#kubectl describe secret $(kubectl get secrets | grep portworx | cut -f3 -d ' ') | grep -E '^token' | cut -f2 -d':' | tr -d '\t' 
