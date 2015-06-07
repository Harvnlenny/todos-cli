class Item < ActiveRecord::Base
  belongs_to :list

  def complete!
    update_attribute :is_complete, true
  end

  def do_by due_date
    update due_date: due_date
  end
end