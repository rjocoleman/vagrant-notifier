require 'terminal-notifier'

module VagrantPlugins
  module VagrantNotifier
    class Plugin < ::Vagrant.plugin('2')
        VAGRANT_VERSION_REQUIREMENT = '>= 1.5.0'

        name 'vagrant-notifier'
        description 'Send a notification when a Vagrant up is completed.'

        action_hook(:notify_on_up, :machine_action_up) do |hook|
          require_relative 'notifier'
          hook.append(Notifier)
        end

    end
  end
end
