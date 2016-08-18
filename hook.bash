set_stdout OK

service=$(config service)

shopt -s nocasematch;

if [[ $os =~ "debian" ]]; then
  run_story $(config action) os debian service $service
elif [[ "$os" =~ "ubuntu" ]]; then
  run_story $(config action) os debian service $service
elif [[ "$os" =~ "centos" ]]; then
  run_story $(config action) os centos service $service
fi

