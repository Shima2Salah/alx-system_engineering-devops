<<<<<<< HEAD
# To install flask from pip3
package { 'flask':
    ensure   => '2.1.0',
    provider => 'pip3',
=======
# install flask -v 2.1.0
exec { 'flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
>>>>>>> ba280ead2a5e6fadd2ac2e1d14577674dcf44f57
}
