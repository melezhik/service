os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

case $os in
debian)
  update-rc.d -f $service remove || exit 1
  ;;
centos)
  chkconfig $service --off || exit 1
  chkconfig $service del --level 2,3,5 || exit 1
  ;;
esac

echo done
