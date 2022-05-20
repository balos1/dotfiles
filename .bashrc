HOSTNAME=$(hostname)
DOMAIN=$(hostname -d)
# echo "hostname: $HOSTNAME"
# echo "  domain: $DOMAIN"
if [ -f $HOME/.bash/$HOSTNAME.sh ]; then
    echo "bash: loaded bashrc for $HOSTNAME"
    source $HOME/.bash/$HOSTNAME.sh
elif [[ $DOMAIN == *"llnl.gov"* ]]; then
    echo "bash: loaded bashrc for LC"
    source $HOME/.bash/lc.sh
elif [[ $DOMAIN == *"olcf.ornl.gov"* ]]; then
    echo "bash: loaded bashrc for OLCF"
    source $HOME/.bash/olcf.sh
else
    echo "bash: loaded default bashrc"
    source $HOME/.bash/default.sh
fi
