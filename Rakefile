# frozen_string_literal: true

require "bundler/gem_tasks"

task :sync_tool do
  require 'fileutils'
  FileUtils.cp "../ruby/tool/lib/core_assertions.rb", "./lib"
  FileUtils.cp "../ruby/tool/lib/envutil.rb", "./lib"
  FileUtils.cp "../ruby/tool/lib/find_executable.rb", "./lib"
end
