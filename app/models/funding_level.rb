class FundingLevel < ActiveRecord::Base


	belongs_to :project
	has_many :pledges, dependent: :nullify

    validates :project, presence: true
    validates :reward_name, presence: true
    validates :amount, presence: true

    def reward_name
    	reward_name.length > 2
    end

    def amount
    	amount > 0
    end
end
