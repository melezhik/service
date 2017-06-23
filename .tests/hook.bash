tests=$(config tests)

for test in $tests; do
  run_story $test 
done
