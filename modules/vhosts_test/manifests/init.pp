class vhosts_test (
	$vhosts,
){
	create_resources(apache::vhost, $vhosts)
}
