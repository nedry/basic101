# encoding: utf-8

require 'jeweler'

README_PATH = File.expand_path('../README.md', File.dirname(__FILE__))

def extract_description_from_readme
  readme = File.open(README_PATH, 'r', &:read)
  s = readme[/^# basic101.*\n+((?:.*\n)+?)\n*##/i, 1]
  unless s
    raise 'Unable to extract description from readme'
  end     
  s.gsub(/\n/, ' ').strip
end

Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see
  # http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = 'basic101'
  gem.homepage = 'http://github.com/wconrad/basic101'
  gem.license = 'MIT'
  gem.summary = %Q{Circa 1980 basic intepreter}
  gem.description = extract_description_from_readme
  gem.email = 'wconrad@yagni.com'
  gem.authors = ['Wayne Conrad']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new
