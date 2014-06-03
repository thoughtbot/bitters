require 'bitters/version'
require 'fileutils'
require 'pathname'
require 'thor'

module Bitters
  class Generator < Thor
    map ['-v', '--version'] => :version
    map ['scaffold'] => :install
    map ['delete'] => :remove

    desc 'install', 'Install Bitters into your project'
    method_options path: :string
    def install
      if bitters_files_already_exist?
        puts "Bitters files already installed, doing nothing."
      else
        install_files
        puts "Bitters files installed to #{install_path}/base"
      end
    end

    desc 'reset', 'Reset Bitters'
    def update
      if bitters_files_already_exist?
        remove_bitters_directory
        install_files
        puts "Bitters files updated."
      else
        puts "No existing Bitters installation. Doing nothing."
      end
    end

    desc 'remove', 'Remove Bitters'
    def remove
      if bitters_files_already_exist?
        remove_bitters_directory
        puts "Bitters was successfully removed."
      else
        puts "No existing Bitters installation. Doing nothing."
      end
    end

    desc 'version', 'Show Bitters version'
    def version
      say "Bitters #{Bitters::VERSION}"
    end

    private

    def bitters_files_already_exist?
      File.directory?(install_path)
    end

    def install_path
      Pathname.new(options[:path].to_s).join('base')
    end

    def install_files
      FileUtils.mkdir_p(install_path)
      FileUtils.cp_r(all_stylesheets, install_path)
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
