class Project < ActiveRecord::Base
	has_many :funding_levels, dependant: :nullify
    has_many :pledges, dependent: :nullify
	
	validates :name ,presence: true
	validates :description, presence: true

	def project_name
		name.length > 2
	end

	def description

	end
end
