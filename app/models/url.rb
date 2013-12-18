class Url < ActiveRecord::Base
  attr_accessible :comment, :name, :student_id, :url

  # Write code the shows a url belongs to a student
  belongs_to :student
  # Write code the validates urls have a domain name of herokuapp.com.
  validates :url, presence: true, format: { with: /\A[\w+\-.]+\.herokuapp\.com\z/}
end
