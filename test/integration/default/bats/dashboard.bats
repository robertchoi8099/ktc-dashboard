# vim: ft=sh:

@test "identity api is running" {
  netstat -tan | grep 5000
}

@test "identity admin is running" {
  netstat -tan | grep 35357
}
