class PanelProvider < ActiveRecord::Base
  def calculate_price
    raise NotImplementedError
  end
end
