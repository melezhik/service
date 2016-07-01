os=$(story_var os)
service=$(story_var service)

echo os: $os
echo service: $service

service $service stop || exit 1

echo done
