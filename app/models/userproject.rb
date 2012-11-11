class Userproject < ActiveRecord::Base
  attr_accessible :expert, :project_id, :user_id
  has_many :users
  has_many :projects
end
