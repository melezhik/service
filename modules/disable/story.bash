os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

case $os in
debian)
  update-rc.d -f $service remove || exit 1
  ;;
centos)
  chkconfig --del $service || exit 1
  chkconfig --level 235 $service off || exit 1
  chkconfig --list $service || exit 1
  ;;
esac

echo done
