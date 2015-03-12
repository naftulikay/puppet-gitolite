# == Class: gitolite::params
#
# Default set of parameters for the installation of Gitolite.
#
class gitolite::params {
    $user = 'git'
    $user_id = 2552
    $user_home = '/var/lib/gitolite'
    $version = Nil
    $always_update = false
}
