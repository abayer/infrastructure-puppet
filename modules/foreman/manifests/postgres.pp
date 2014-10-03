class foreman::postgres ($password) {

  class { 'postgresql::server': }

  # TODO Create a real password for this in eyaml
  postgresql::server::db { 'foreman':
    user     => 'foreman',
    password => $password,
  }

}