#!/bin/bash

     #!/bin/bash al començament del fitxer és
     # necessari per saber amb quin intèrpret executar aquest fitxer



if [  “$HOSTNAME” == “pcxavim6” ]; then
      echo som a la màquina 6
else
      echo som a una una màquina no coneguda
fi


if [  “$HOSTNAME”== “pcxavim6” ]; then
      echo som a la màquina 6
else
      echo som a una una màquina no coneguda
fi

if [“$HOSTNAME” == “pcxavim6” ]; then
      echo som a la màquina 6
else
      echo som a una una màquina no coneguda
fi
