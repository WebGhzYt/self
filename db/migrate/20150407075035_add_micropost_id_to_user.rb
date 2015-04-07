class AddMicropostIdToUser < ActiveRecord::Migration
  def change
    add_reference :users, :micropost, index: true, foreign_key: true
  end
end
