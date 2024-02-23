# Install pip3
package { 'python3-pip':
  ensure => installed,
}

# Install Flask 2.1.0 and Werkzeug 2.1.1
exec { 'install_flask_werkzeug':
  command => 'pip3 install Flask==2.1.0 Werkzeug==2.1.1',
  require => Package['python3-pip'],
}
