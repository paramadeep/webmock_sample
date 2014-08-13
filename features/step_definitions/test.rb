Given(/^I set up mock$/) do
  User.new.build()  
end

Then(/^it is working$/) do
  p  Net::HTTP.get("http//localhost:1902/applicationUserService/PROMOTION/users/MARDEGAN", "/")
end

