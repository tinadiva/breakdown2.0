class Project < ApplicationRecord
	has_many :milestones, :dependent => :destroy
end
