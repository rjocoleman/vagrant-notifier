# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

version = '0.1.0'

Gem::Specification.new do |gem|
  gem.name          = "vagrant-notifier"
  gem.version       = version
  gem.authors       = ["Robert Coleman"]
  gem.email         = ["github@robert.net.nz"]
  gem.description   = %q{Notify.}
  gem.summary       = %q{Notify.}
  gem.homepage      = "https://github.com/rjocoleman/vagrant-notifier/"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(spec)/})
  # gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
  
  gem.signing_key = '/Users/rjocoleman/.gemcert/gem-private_key.pem'
  gem.cert_chain  = ['gem-public_cert.pem']
end
