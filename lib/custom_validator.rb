#Alternative way. NOT USED

class MensAndWomensValidator < ActiveModel::Validator
  def validate(record)
    unless record.mens_apparel == true || record.womens_apparel == true
      record.errors[:mens_apparel] << "The store needs to carry either men's or women's apparel."
      record.errors[:womens_apparel] << "The store needs to carry either men's or women's apparel."
    end
  end
end