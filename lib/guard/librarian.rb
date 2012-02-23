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
      say `cd chef-repo; librarian-chef install`
    end

    def say msg
      UI.info "[Guard::Librarian] #{msg}"
    end
  end
end
