# == Class: gitolite::install::update
#
# Updates Gitolite to the latest commits in the specified branch.
#
class gitolite::install::update inherits gitolite::install {
    if $always_update {
        # TODO if this is true, and $version doesn't match a numeric version,
        # then do a git pull --rebase $version.
        exec { 'update_gitolite':
            command => "git pull --rebase ${version}",
            path    => '/bin:/usr/bin',
            cwd     => '/usr/src/gitolite'
        }
    }
}
