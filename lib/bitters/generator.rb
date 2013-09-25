require "fileutils"

module Bitters
  class Generator
    def initialize(arguments)
      @subcommand = arguments.first
    end

    def run
      if @subcommand == "install"
        install
      elsif @subcommand == "update"
        update
      elsif @subcommand == "remove"
        remove
      end
    end

    def update
      if bitters_files_already_exist?
        remove_bitters_directory
        install_files
        puts "Bitters files updated."
      else
        puts "No existing Bitters installation. Doing nothing."
      end
    end

    def install
      if bitters_files_already_exist?
        puts "Bitters files already installed, doing nothing."
      else
        install_files
        puts "Bitters files installed to /base"
      end
    end

    def remove
      if bitters_files_already_exist?
        remove_bitters_directory
        puts "Bitters was successfully removed."
      else
        puts "No existing Bitters installation. Doing nothing."
      end
    end

    private

    def bitters_files_already_exist?
      File.directory?("base")
    end

    def install_files
      FileUtils.mkdir_p("base")
      FileUtils.cp_r(all_stylesheets, "base/")
    end

    def remove_bitters_directory
      FileUtils.rm_rf("base")
    end

    def all_stylesheets
      Dir["#{stylesheets_directory}/*"]
    end

    def stylesheets_directory
      File.join(top_level_directory, "app", "assets", "stylesheets")
    end

    def top_level_directory
      File.dirname(File.dirname(File.dirname(__FILE__)))
    end
  end
end
