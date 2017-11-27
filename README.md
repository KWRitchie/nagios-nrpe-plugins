# nagios-nrpe-plugins
assumes NRPE agent is installed on remote/monitored hosts

# add the plugin to your remote/monitored server (check_ansible_vers as an example)
cp check_ansible_vers /usr/lib64/nagios/plugins/

# example nrpe.conf line

command[check_ansible_vers]=/usr/lib64/nagios/plugins/check_ansible_vers

# restart nrpe agent 
systemctl restart nrpe
