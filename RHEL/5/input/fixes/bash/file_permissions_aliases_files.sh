grep "/" /etc/aliases /etc/aliases.db | grep -v "#" | grep ^/ | sed 's/.*[\s|\t]\//\//' | xargs chmod 755