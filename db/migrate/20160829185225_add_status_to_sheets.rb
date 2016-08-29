class AddStatusToSheets < ActiveRecord::Migration[5.0]
  def change
    add_column :sheets, :status, :text
  end
end
