Bundler.setup(:development)

if Gem::Specification::find_all_by_name("jeweler").any?

  require 'yard'

  YARD::Rake::YardocTask.new do |t|
  end
  
end
