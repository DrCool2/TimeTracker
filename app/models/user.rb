class User < ApplicationRecord
  has_many :entries, dependent: :destroy

  def full_name(id)
     # User.all.each do |u|
     #   return [[u.id],[u.first_name + " " + u.last_name]]
     # end
     user_id = User.find_by_id(id)
     return user_id.first_name + " " + user_id.last_name
  end
end
