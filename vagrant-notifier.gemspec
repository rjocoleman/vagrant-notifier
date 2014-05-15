# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-notifier'
  spec.version       = '0.1.1'
  spec.authors       = ['Robert Coleman']
  spec.email         = ['github@robert.net.nz']
  spec.summary       = %q{Send a notification when a Vagrant command is completed.}
  spec.description   = %q{Send a notification when a Vagrant command is completed.}
  spec.homepage      = 'https://github.com/rjocoleman/vagrant-notifier'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'terminal-notifier', '~> 1.6.0'
end
