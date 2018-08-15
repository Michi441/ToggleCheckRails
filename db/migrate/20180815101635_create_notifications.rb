class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.string :title
      t.boolean :check, default: true

      t.timestamps
    end
  end
end
