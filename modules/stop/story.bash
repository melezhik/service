os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

case $os in 
archlinux)
    systemctl stop $service || exit 1
    systemctl status $service 
    if [[ $? == 3 ]]; then echo " {$service} stopped" ; fi
  ;;
*) 
    service $service stop || exit 1
    service $service status || echo "{$service}" stopped
  ;;
esac
