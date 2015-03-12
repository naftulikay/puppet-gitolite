# == Class: gitolite::install::version
#
# Makes sure the right version of Gitolite is installed.
#
class gitolite::install::version inherits gitolite::install {
    $actual_version = $version

    if $actual_version =~ /^\d+\.\d+(?:\.\d+)*$/ {
        $actual_version = "v${actual_version}"
    }

    exec { 'gitolite_select_version':
        command => "git checkout ${actual_version}",
        cwd     => '/usr/src/gitolite',
        path    => '/bin:/usr/bin',
        unless  => "test \"$(git describe --contains --all HEAD)\" == ${actual_version}""
    }
}
