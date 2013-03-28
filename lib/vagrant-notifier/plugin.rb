require 'terminal-notifier'

module VagrantNotifier
  class Plugin < ::Vagrant.plugin("2")
    name "Notifier"

    action_hook = Vagrant::Action::Hook.new
    action_hook.after(ALL_ACTIONS, TerminalNotifier.notify('Goodbye World', :title => 'Vagrant'))
  end
end