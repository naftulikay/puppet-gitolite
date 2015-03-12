# == Class: gitolite::install
#
# Installs Gitolite.
#
class gitolite::install inherits gitolite {
    contain gitolite::install::user,
        gitolite::install::download,
        gitolite::install::configure,
        gitolite::install::version,
        gitolite::install::update

    Class['Gitolite::Install::User'] ->
    Class['Gitolite::Install::Download'] ->
    Class['Gitolite::Install::Configure'] ->
    Class['Gitolite::Install::Version'] ->
    Class['Gitolite::Install::Update']
}
