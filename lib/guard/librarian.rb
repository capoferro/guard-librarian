require 'guard'
require 'guard/guard'

module Guard
  class Librarian < Guard
    def start
      say 'START'
    end

    def stop
      say 'STOP'
    end

    def reload
      say 'RELOAD'
    end

    def run_all
      say 'RUN ALL'
    end

    def run_on_change(paths)
      say 'RUN ON CHANGE'
      say paths.inspect
    end

    private

    def say msg
      UI.info "[Guard::Librarian] #{msg}"
    end
  end
end
