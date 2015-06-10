class Store < ActiveRecord::Base

	validate :mens_and_women_apparel

	has_many :employees
	validates :name, length: { minimum: 3 }, presence: true
	# validates_presence_of :name
	# validates_length_of :name, minimum: 3
	validates :annual_revenue, numericality: {greater_than_or_equal_to: 0, only_integer: true}
	# validates_numericality_of :annual_revenue, :integer_only => true, greater_than_or_equal_to: 0

	 def mens_and_women_apparel
    if !mens_apparel && !womens_apparel
      errors.add(:store, "The store needs to carry either men's or women's apparel.")
    end
  end
end
