class CreateTargets < ActiveRecord::Migration
def change
    create_table :targets do |t|
    	t.string :title,  :null => false, :default => ""
    	t.string :shorttitle,  :null => false, :default => ""
    	t.integer :smt, :null => false
    	t.integer :pct, :null => false
    	t.integer :egt, :null => false
    	t.integer :tat, :null => false
    	t.integer :srt, :null => false
    	t.integer :sat, :null => false
    	t.integer :drt, :null => false
    	t.integer :crt, :null => false
    	t.integer :stt, :null => false
    	t.integer :vmt, :null => false
    	t.integer :eht, :null => false
    	t.integer :oet, :null => false

	    t.belongs_to :user

	    t.timestamps
    end

	add_index :targets, [:title, :shorttitle], :unique => true

  end
end
