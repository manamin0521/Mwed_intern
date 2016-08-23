class User < ApplicationRecord
  has_many :reviews
  has_many :invoices
end
