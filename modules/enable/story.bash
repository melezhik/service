os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

case $os in
debian)
  update-rc.d $service defaults || exit 1
  ;;
centos)
  chkconfig $service --add || exit 1
  chkconfig $service on --level 2,3,5 || exit 1
  ;;
esac

echo done
