class Cmessage < ApplicationRecord
  belongs_to :user
  belongs_to :consultant
end
