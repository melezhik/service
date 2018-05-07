service=$(config service)

shopt -s nocasematch;

if [[ $os =~ "debian" ]]; then
  run_story $(config action) os debian service $service
elif [[ "$os" =~ "ubuntu" ]]; then
  run_story $(config action) os debian service $service
elif [[ "$os" =~ "amazon" ]]; then
  run_story $(config action) os amazon service $service
elif [[ "$os" =~ "centos" ]]; then
  run_story $(config action) os $os service $service
elif [[ "$os" =~ "archlinux" ]]; then
  run_story $(config action) os $os service $service
elif [[ "$os" =~ "minoca" ]]; then
  run_story $(config action) os $os service $service
elif [[ "$os" =~ "funtoo" ]]; then
  run_story $(config action) os $os service $service
else
  echo "unknown os: $os"
  exit 1
fi

