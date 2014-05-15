require 'terminal-notifier'

module VagrantPlugins
  module VagrantNotifier
    class Plugin < ::Vagrant.plugin('2')
      VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

      name 'vagrant-notifier'
      description 'Send a notification when running a Vagrant command is completed.'

      action_hook(:notify_on_up, :environment_unload) do |hook|
        require_relative 'action'
        hook.prepend(Notifier)
      end

    end
  end
end
