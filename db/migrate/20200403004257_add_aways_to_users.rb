class AddAwaysToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :aways, :user, foreign_key: true
  end
end
