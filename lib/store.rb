class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  # errors.add(:name, "The name length is at least 3")



  # validate :carry_at_least_men_or_women

  # def carry_at_least_men_or_women
  #   if (!Store[:mens_apparel] && !Store[:women_apparel])
  #     errors.add(:mens_apparel, "There is not men and women apparel!")
  #     errors.messages[:women_apparel] << "There is not men and women apparel!"
  #   end
  # end
end
