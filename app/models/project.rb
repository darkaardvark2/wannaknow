class Project < ActiveRecord::Base
  attr_accessible :body, :funded, :title, :video
  has_many :userprojects
  has_many :users,  :through => :userprojects
end
