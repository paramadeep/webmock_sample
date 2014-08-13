class User

  def initialize
  @base = Parser.to_object('{
  "userId": "MARDEGAN",
  "firstName": "Massimiliano",
  "lastName": "Mardegan",
  "email": "Massimiliano_Mardegan@test.it",
  "roles": [
    {
      "roleName": "Buyer",
      "id": 13
    }
  ],
  "merchandiseSubscriptions": [
    {
      "userId": 51, 
      "roleId": 13, 
      "merchandiseType": {
        "description": "SUBCATEGORIA",
        "type": "SC"
      },
      "merchandiseId": 8001
    }]
}')
  end

  @@roles = { :buyer => {:roleName => "Buyer", :id => "13"},
              :director => {:roleName => "Merchandise Director",:id=>"15"},
              :flow_manager => {:roleName => "Merchandise Director",:id=>"15"},
              :buyer_assistant => {:roleName => "Buyer Assistant",:id=>"15"}
            }

  def build
    stub_request(:get, "http://http//localhost:1902/applicationUserService/PROMOTION/users/#{@base.userId}:80/").to_return(:body => Parser.to_json(@base), :status => 200)
  end

end
