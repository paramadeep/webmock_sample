require 'webmock/cucumber'
require 'pry'
require 'json'
require 'recursive-open-struct'

Dir['models/**/*.rb'].each {|model| require model}
World(FactoryGirl::Syntax::Methods)
