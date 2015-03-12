# == Class: gitolite::install::user
#
# Creates the user for running Gitolite and their home directory.
#
class gitolite::install::user inherits gitolite::install {
    user { 'gitolite':
        name       => $gitolite::user,
        uid        => $gitolite::user_id,
        home       => $gitolite::user_home,
        managehome => true
    }
}
