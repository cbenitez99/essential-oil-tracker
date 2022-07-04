class User < ApplicationRecord
    has_secure_password
    has_many :oils
    validates :username, presence:true, length:{within:6..32} , format: {with: /^[a-zA-Z0-9_ ]*$/, message:"can contain alphabets, numbers and underscores only"}    
    validates :password, presence:true, length:{within:8..32}, confirmation:true
end
