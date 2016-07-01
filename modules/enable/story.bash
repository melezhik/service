os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

case $os in
debian)
  update-rc.d $service defaults || exit 1
  ;;
centos)
  chkconfig --add $service || exit 1
  chkconfig --level 235 $service on || exit 1
  chkconfig --list $service || exit 1
  ;;
esac

echo done
