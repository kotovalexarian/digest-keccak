# frozen_string_literal: true

require 'bundler/gem_tasks'

desc 'Run code analysis tools (RuboCop...)'
task lint: :rubocop

desc 'Fix code style (rubocop --auto-correct)'
task fix: 'rubocop:auto_correct'

begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
rescue LoadError
  nil
end
