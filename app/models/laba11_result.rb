class Laba11Result < ApplicationRecord
    validates :happy_numbers_quantity, uniqueness: true
end
