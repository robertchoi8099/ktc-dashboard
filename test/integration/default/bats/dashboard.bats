# vim: ft=sh:

@test "apache is running" {
  wget --no-check-certificate http://localhost/ -o /dev/null
}
