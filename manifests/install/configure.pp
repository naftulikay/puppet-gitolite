# == Class: gitolite::install::configure
#
# Configures Gitolite after installation.
#
class gitolite::install::configure inherits gitolite::install {
    # TODO add "update-users-and-repositories" task here.
    # the task will consist of cloning the admin repository into a temporary
    # directory, creating the file using a template and using the users and
    # repositories defined, committing, and somehow pushing back into the admin
    # repo once done.
}
