class Userproject < ActiveRecord::Base
  attr_accessible :expert, :project_id, :user_id
  belongs_to :user
  belongs_to :project
end
