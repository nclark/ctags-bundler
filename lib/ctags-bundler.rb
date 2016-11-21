require 'bundler'
require 'bundler/runtime'

module Ctags
  module Bundler
    extend self

    def generate_tags
      paths = (bundler_paths << '.').join(' ')
      cmd   = "find #{paths} -type f | ctags -f tags -L -"

      system(cmd)
    end
    
    private
    
    def bundler_paths
      runtime = ::Bundler::Runtime.new Dir.pwd, ::Bundler.definition
      paths = runtime.specs.map(&:full_gem_path)
    end
  end
end
