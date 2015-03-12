puppet-gitolite
===============

A Puppet module for installing, configuring, and managing Gitolite, its repositories
and its users.

## Usage

To install Gitolite, simply include the `gitolite` class somewhere in your manifests:

    node default {
        class { 'gitolite': }
    }

To create and manage repositories:

    gitolite::repository { 'gittesting': }

To create and manage users and their permissions to repositories:

    gitolite::user { 'rfkrocktk':
        source => "puppet:///modules/foo/rfkrocktk.ssh.pub"
        permissions => [
            {
                repo   => Gitolite::Repository['gittesting'],
                perm   => 'RW+'
            },
            {
                repo   => Gitolite::Repository['anotherrepository'],
                branch => 'master',
                perm   => 'R'
            }
        ]
    }
