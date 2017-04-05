class Task < ApplicationRecord
  after_initialize :init

  def init
    self.completed  ||= false
  end
end
