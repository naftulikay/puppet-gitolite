# == Class: gitolite::install::download
#
# Clones the Gitolite Git repository into /usr/src.
#
class gitolite::install::download inherits gitolite::install {
    exec { 'clone_gitolite':
        command => 'git clone https://github.com/sitaramc/gitolite.git /usr/src/gitolite'
        creates => '/usr/src/gitolite',
        path    => '/bin:/usr/bin'
    }
}
