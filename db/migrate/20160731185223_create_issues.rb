class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
        t.integer :github_id
        t.string :rank # rank in the list of priorities
        t.text :status # status has to do with whether or not it's active/closed/etc

        t.timestamps
    end
  end
end
