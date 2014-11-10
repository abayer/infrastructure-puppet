class vhosts_test::files (
){

    require svnwcsub

    apache::custom_config { 'aoo_macro':
        ensure          => present,
        source          => 'puppet:///modules/vhosts_test/aoo_macro',
    }

    apache::custom_config { 'tlp_macro':
        ensure          => present,
        source          => 'puppet:///modules/vhosts_test/tlp_macro',
    }

    apache::custom_config { 'apacheorg':
        ensure          => present,
        source          => 'puppet:///modules/vhosts_test/apacheorg',

        $apache_org_dirs = ['/var/www', '/var/www/www.apache.org', '/var/www/www.apache.org/dist', '/var/www/www.apache.org/dist/zzz']

    file { $apache_org_dirs:
        ensure  => 'directory',
        owner   => 'svnwc',
        group   => 'apmirror',
        mode    => '2775',
    }

    file { '.htaccess':
        ensure  => present,
        path    => '/var/www/www.apache.org/dist/.htaccess',
        mode    => 0644,
        owner   => 'svnwc',
        group   => 'svnwc',
        source  => 'puppet:///modules/vhosts_test/.htaccess',
        require => File['/var/www/www.apache.org/dist'],
    }

    file { '.message':
        ensure  => present,
        path    => '/var/www/www.apache.org/dist/.message',
        mode    => 0644,
        owner   => 'svnwc',
        group   => 'svnwc',
        source  => 'puppet:///modules/vhosts_test/.message',
        require => File['/var/www/www.apache.org/dist'],
    }

    file { 'README.html':
        ensure  => present,
        path    => '/var/www/www.apache.org/dist/README.html',
        mode    => 0644,
        owner   => 'svnwc',
        group   => 'svnwc',
        source  => 'puppet:///modules/vhosts_test/README.html',
        require => File['/var/www/www.apache.org/dist'],
    }

    file { 'HEADER.html':
        ensure  => present,
        path    => '/var/www/www.apache.org/dist/HEADER.html',
        mode    => 0644,
        owner   => 'svnwc',
        group   => 'svnwc',
        source  => 'puppet:///modules/vhosts_test/HEADER.html',
        require => File['/var/www/www.apache.org/dist'],
    }

    file { 'favicon.ico':
        ensure  => present,
        path    => '/var/www/www.apache.org/dist/favicon.ico',
        mode    => 0644,
        owner   => 'svnwc',
        group   => 'svnwc',
        source  => 'puppet:///modules/vhosts_test/favicon.ico',
        require => File['/var/www/www.apache.org/dist'],
    }
}
