class Milestone < ApplicationRecord
  belongs_to :project
  has_many :todoitems, :dependent => :destroy
end
