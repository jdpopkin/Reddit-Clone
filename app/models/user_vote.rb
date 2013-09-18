class UserVote < ActiveRecord::Base
  attr_accessible :link_id, :user_id, :vote

  belongs_to :user, class_name: "User", foreign_key: :user_id, primary_key: :id
  belongs_to :link, class_name: "Link", foreign_key: :link_id, primary_key: :id
end
