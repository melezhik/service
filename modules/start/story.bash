os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

service $service start || exit 1

echo done
