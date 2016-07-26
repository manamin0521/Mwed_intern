# == Schema Information
#
# Table name: invoices
#
#  id                  :integer          not null, primary key
#  user_id             :integer          not null
#  venue_id            :integer          not null
#  title               :string(200)
#  body                :string(2000)
#  total_amount        :integer
#  number_of_attendees :integer
#

class Invoice < ApplicationRecord
  belongs_to :user
  belongs_to :venue
end
