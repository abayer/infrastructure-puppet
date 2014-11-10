class vhosts_test::compat (
){

    # Create wget and rsync symlink to the fbsd locations
    # to appease the hardcoded binary locations in the
    # scripts
    file { '/usr/local/bin/rsync':
        ensure  => 'link',
        target  => '/usr/bin/rsync',
    }

    file { '/usr/local/bin/svn':
        ensure  => 'link',
        target  => '/usr/bin/svn',
    }

    file { '/www':
        ensure  => 'link',
        target  => '/var/www',
    }

    file { '/x1':
        ensure  => 'link',
        target  => '/var',
    }

    file { '/usr/local/bin/python2.7':
        ensure  => 'link',
        target  => '/usr/bin/python2.7',
    }
}
