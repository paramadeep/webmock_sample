class User


var base = '{
  "userId": "MARDEGAN",
  "firstName": "Massimiliano",
  "lastName": "Mardegan",
  "email": "Massimiliano_Mardegan@gruppopam.it",
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
}'

var roles = { :buyer => {:roleName => "Buyer", :id => "13"},
 :director => {:roleName => "Merchandise Director",:id=>"15"},
 :flow_manager => {:roleName => "Merchandise Director",:id=>"15"},
 : => {:roleName => "Merchandise Director",:id=>"15"},
 }

def initilize 
