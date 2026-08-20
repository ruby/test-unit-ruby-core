# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |test|
  test.libs << "lib"
  test.pattern = "test/**/test_*.rb"
end

task default: :test

task :sync_tool do
  require 'fileutils'
  FileUtils.cp "../ruby/tool/lib/core_assertions.rb", "./lib"
  FileUtils.cp "../ruby/tool/lib/envutil.rb", "./lib"
  FileUtils.cp "../ruby/tool/lib/find_executable.rb", "./lib"
  FileUtils.cp "../ruby/tool/lib/memory_status.rb", "./lib"
end
