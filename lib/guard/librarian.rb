require 'guard'
require 'guard/guard'
require 'librarian/cli'


module Guard
  class Librarian < Guard
    def start
      install_cookbooks
    end

    def run_on_change(paths)
      install_cookbooks
    end

    private

    def install_cookbooks
      `cd chef-repo; librarian-chef install`
      say 'Install complete.'
    end

    def say msg
      UI.info "[Guard::Librarian] #{msg}"
    end
  end
end
