class AddColumnToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :trump_id, :integer
  end
end
