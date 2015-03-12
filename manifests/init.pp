# == Class: gitolite
#
# Installs Gitolite on your machine.
#
# === Parameters
#
# [*user*]
#   String. The name of the user to run Gitolite as.
#   Defaults to 'git'.
#
# [*user_id*]
#   Integer. The UID of the user to run Gitolite as.
#   Defaults to 2552.
#
# [*user_home*]
#   String. The home directory of the Gitolite user.
#   Defaults to '/var/lib/gitolite'.
#
# [*version*]
#   String. The version or the branch name of Gitolite to ensure is
#   installed. Defaults to checking out the latest 'master' when first
#   installed.
#
# [*always_update*]
#   Boolean. Whether to run a Git pull on every run to track the latest
#   from a branch. If you like to live on the bleeding edge, set
#   version to 'master' and set this property to true. Every time that
#   Puppet is run, Gitolite will be updated to the latest commit in
#   the 'master' branch. You probably don't want this option. Defaults
#   to false.
#
class gitolite (
        $user          = $gitolite::params::user,
        $user_id       = $gitolite::params::user_id,
        $user_home     = $gitolite::params::user_home,
        $version       = $gitolite::params::version,
        $always_update = $gitolite::params::always_update,
    ) inherits gitolite::params {

    class { 'git': } ->
    class { 'gitolite::install': }

    # ie: if something depends on this module, all of these must be done before
    # this module is considered "finished" running
    contain git, gitolite::install
}
