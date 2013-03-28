require "vagrant"

module VagrantPlugins
  module Notifier
    class Plugin < Vagrant.plugin("2")
      name "notifier"
      action_hook(:up) do |seq|
        callable = lambda { |env| TerminalNotifier.notify('Hello World', :title => 'Vagrant', :subtitle => 'SOMETHING HAPPENED') }

        seq.insert(0, callable)
    end
  end
end