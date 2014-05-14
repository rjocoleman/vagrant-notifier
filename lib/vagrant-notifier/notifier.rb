module VagrantPlugins
  module VagrantNotifier
    class Notifier
      def initialize(app, env)
        @app = app
      end

      def call(env)
        @machine = env[:machine]
        notify
        @app.call(env)
      end

      protected

      def notify
        machine_name = @machine.config.vm.hostname || @machine.config.vm.box
        @machine.ui.success 'Running Terminal Notifier'
        TerminalNotifier.notify("#{machine_name} is up \xF0\x9F\x9A\x80", title: 'Vagrant')
      end
    end
  end
end
