set_stdout OK

os=`uname -a; cat /etc/issue; cat /etc/*-release`

service=$(config service)

set_stdout $os

shopt -s nocasematch;


if [[ $os =~ "debian" ]]; then
  run_story $(config action) os debian service $service
elif [[ "$os" =~ "ubuntu" ]]; then
  run_story $(config action) os debian service $service
elif [[ "$os" =~ "centos" ]]; then
  run_story $(config action) os centos service $service
fi

