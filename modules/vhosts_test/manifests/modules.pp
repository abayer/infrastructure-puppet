class vhosts_test::modules (
){

    apache::mod { 'allowmethods': }
    apache::mod { 'cgi': }
    apache::mod { 'cgid': }
    apache::mod { 'expires': }
    apache::mod { 'headers': }
    apache::mod { 'include': }
    apache::mod { 'macro': }
    apache::mod { 'proxy': }
    
    class { 'apache::mod::status':
        allow_from      => ['all'],
        apache_version  => '2.3', # Force module to use Allow from syntax and actually allow anyone to check
    }
}
