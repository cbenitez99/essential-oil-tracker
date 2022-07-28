class UserOil < ApplicationRecord
    belongs_to :user
    validates :name, presence: true
    validates :price, presence: true
    validates :amount, presence: true
    validates :user_id, presence: true

end
