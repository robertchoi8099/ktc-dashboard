# vim: ft=sh:

@test "apache is running" {
  curl -k http://localhost/
}
