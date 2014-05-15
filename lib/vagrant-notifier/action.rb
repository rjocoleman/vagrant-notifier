module VagrantPlugins
  module VagrantNotifier
    class Notifier
      def initialize(app, env)
        @app = app
      end

      def call(env)
        TerminalNotifier.notify("Vagrant run is done \xF0\x9F\x9A\x80", title: 'Vagrant')
        @app.call(env)
      end
    end
  end
end
