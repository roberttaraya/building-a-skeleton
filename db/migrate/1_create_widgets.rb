require 'active_record'

class CreateWidgets < ActiveRecord::Migration

  def change
    create_table :widgets do |t|
      t.string :title
    end
  end

end