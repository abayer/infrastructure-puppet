class vhosts_test (
	$vhosts,
){

    require apache
    require vhosts_test::compat
    require vhosts_test::files
    require vhosts_test::modules

	create_resources(apache::vhost, $vhosts)
}
