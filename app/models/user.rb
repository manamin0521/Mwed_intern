# == Schema Information
#
# Table name: users
#
#  id       :integer          not null, primary key
#  nickname :string(200)
#  gender   :integer          not null
#  birthday :datetime         not null
#

class User < ApplicationRecord
  has_many :reviews
  has_many :invoices
end
