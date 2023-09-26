#!/bin/bash

     #!/bin/bash al començament del fitxer és
     # necessari per saber amb quin intèrpret executar aquest fitxer


case   "$HOSTNAME" in 
        (pcxavim6)  echo a la màquina 6 ;&
        (pcxavim7)  echo a la màquina 7 ;;
        (pcxavim8)  echo a la màquina 8 ;;
        (pcxavim9) .... ;;
#        ...
        (*) echo a una màquina no coneguda ;;
   esac

