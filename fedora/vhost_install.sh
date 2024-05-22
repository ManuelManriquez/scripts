#!/bin/bash

sudo wget https://raw.githubusercontent.com/talamantesvictor/talamantesvictor/main/scripts/vhost.sh

chmod +x vhost.sh

sudo mkdir /etc/scripts/

sudo mv vhost.sh /etc/scripts/

ALIAS_NAME="vhost"
ALIAS_COMMAND="bash /etc/scripts/vhost.sh"

BASHRC_FILE="$HOME/.bashrc"

if grep -q "alias $ALIAS_NAME=" "$BASHRC_FILE"; then
    echo "El alias '$ALIAS_NAME' ya existe en $BASHRC_FILE."
else
    echo "alias $ALIAS_NAME='$ALIAS_COMMAND'" >> "$BASHRC_FILE"
    echo "Alias '$ALIAS_NAME' added to $BASHRC_FILE."

    source "$BASHRC_FILE"
    echo "$BASHRC_FILE reloaded."
fi
