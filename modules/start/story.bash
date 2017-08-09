os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

case $os in 
archlinux)
    systemctl start $service || exit 1
    systemctl status $service && echo "{$service}" running
  ;;
centos7)
    systemctl start $service || exit 1
    systemctl status $service && echo "{$service}" running
  ;;
*) 
  service $service start || exit 1
	service $service status && echo "{$service}" running
  ;;
esac
