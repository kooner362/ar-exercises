class Store < ActiveRecord::Base
    has_many :employees
    validates_length_of :name, :minimum => 3
    validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
    validate :must_carry_atleast_one
    
    def must_carry_atleast_one
        if !mens_apparel && !womens_apparel
            errors.add(:base, "Store must carry at least one of the mens's or women's apparel")
        end
    end

end
