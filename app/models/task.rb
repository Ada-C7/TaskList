class Task < ApplicationRecord
  def description
    return nil if description.nil?
    Task.description
    # Date.today.year - publication_year
  end
end
