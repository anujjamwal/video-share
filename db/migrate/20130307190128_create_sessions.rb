class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.attachment :video

      t.timestamps
    end
  end
end
