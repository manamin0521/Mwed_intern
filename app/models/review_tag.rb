# == Schema Information
#
# Table name: review_tags
#
#  id        :integer          not null, primary key
#  review_id :integer          not null
#  tag_name  :string(200)
#

class ReviewTag < ApplicationRecord
  belongs_to :review
end
