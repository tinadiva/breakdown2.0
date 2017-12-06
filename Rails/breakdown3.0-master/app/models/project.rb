class Project < ApplicationRecord
	belongs_to :users
	has_many :milestones, :dependent => :destroy
end
