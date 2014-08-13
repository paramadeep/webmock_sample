require 'webmock/cucumber'
require 'pry'
require 'json'
require 'recursive-open-struct'
require 'webmock'
include WebMock::API
Dir['models/**/*.rb'].each {|model| require model}
