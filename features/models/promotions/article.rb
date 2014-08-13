class Article < BaseModel
  attr_accessor :id,:name
end

FactoryGirl.define do
  factory :article do
    id '10'
    name 'kadalaiMuttai'
  end
end
