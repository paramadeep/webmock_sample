Given(/^I set up mock$/) do
  stub_request(:get, "http://http//localhost:1902:80/").to_return(:body => build(:article).to_json, :status => 200)
end

Then(/^it is working$/) do
  p  Net::HTTP.get("http://localhost:1902", "/")
end

