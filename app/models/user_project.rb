class UserProject < ActiveRecord::Base
  attr_accessible :expert, :project_id, :user_id
end
