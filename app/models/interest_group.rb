class InterestGroup < ActiveRecord::Base

  has_many :groups

  def groups
    if id.blank?
      []
    else
      super
    end
  end

end
