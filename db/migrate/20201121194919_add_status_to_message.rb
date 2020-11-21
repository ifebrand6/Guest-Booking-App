class AddStatusToMessage < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :hidden_status, :boolean, default: false 
  end
end
