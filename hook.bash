
service=$(config service)

shopt -s nocasematch;

if [[ $os =~ "debian" ]]; then
  run_story $(config action) os debian service $service
  set_stdout OK
elif [[ "$os" =~ "ubuntu" ]]; then
  run_story $(config action) os debian service $service
  set_stdout OK
elif [[ "$os" =~ "centos" ]]; then
  run_story $(config action) os $os service $service
  set_stdout OK
else
  set_stdout "unknown os: $os"
fi

