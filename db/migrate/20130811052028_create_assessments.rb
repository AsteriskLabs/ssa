class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.string :title,  :null => false, :default => ""
      t.boolean :sm1,   :null => false, :default => false
      t.boolean :sm2,   :null => false, :default => false
      t.boolean :sm3,   :null => false, :default => false
      t.boolean :sm4,   :null => false, :default => false
      t.boolean :sm5,   :null => false, :default => false
      t.boolean :sm6,   :null => false, :default => false
      t.boolean :sm7,   :null => false, :default => false
      t.boolean :sm8,   :null => false, :default => false
      t.boolean :pc1,   :null => false, :default => false
      t.boolean :pc2,   :null => false, :default => false
      t.boolean :pc3,   :null => false, :default => false
      t.boolean :pc4,   :null => false, :default => false
      t.boolean :pc5,   :null => false, :default => false
      t.boolean :pc6,   :null => false, :default => false
      t.boolean :eg1,   :null => false, :default => false
      t.boolean :eg2,   :null => false, :default => false
      t.boolean :eg3,   :null => false, :default => false
      t.boolean :eg4,   :null => false, :default => false
      t.boolean :eg5,   :null => false, :default => false
      t.boolean :eg6,   :null => false, :default => false
      t.boolean :ta1,   :null => false, :default => false
      t.boolean :ta2,   :null => false, :default => false
      t.boolean :ta3,   :null => false, :default => false
      t.boolean :ta4,   :null => false, :default => false
      t.boolean :ta5,   :null => false, :default => false
      t.boolean :ta6,   :null => false, :default => false
      t.boolean :ta7,   :null => false, :default => false
      t.boolean :sr1,   :null => false, :default => false
      t.boolean :sr2,   :null => false, :default => false
      t.boolean :sr3,   :null => false, :default => false
      t.boolean :sr4,   :null => false, :default => false
      t.boolean :sr5,   :null => false, :default => false
      t.boolean :sr6,   :null => false, :default => false
      t.boolean :sa1,   :null => false, :default => false
      t.boolean :sa2,   :null => false, :default => false
      t.boolean :sa3,   :null => false, :default => false
      t.boolean :sa4,   :null => false, :default => false
      t.boolean :sa5,   :null => false, :default => false
      t.boolean :sa6,   :null => false, :default => false
      t.boolean :dr1,   :null => false, :default => false
      t.boolean :dr2,   :null => false, :default => false
      t.boolean :dr3,   :null => false, :default => false
      t.boolean :dr4,   :null => false, :default => false
      t.boolean :dr5,   :null => false, :default => false
      t.boolean :dr6,   :null => false, :default => false
      t.boolean :cr1,   :null => false, :default => false
      t.boolean :cr2,   :null => false, :default => false
      t.boolean :cr3,   :null => false, :default => false
      t.boolean :cr4,   :null => false, :default => false
      t.boolean :cr5,   :null => false, :default => false
      t.boolean :cr6,   :null => false, :default => false
      t.boolean :st1,   :null => false, :default => false
      t.boolean :st2,   :null => false, :default => false
      t.boolean :st3,   :null => false, :default => false
      t.boolean :st4,   :null => false, :default => false
      t.boolean :st5,   :null => false, :default => false
      t.boolean :st6,   :null => false, :default => false
      t.boolean :st7,   :null => false, :default => false
      t.boolean :vm1,   :null => false, :default => false
      t.boolean :vm2,   :null => false, :default => false
      t.boolean :vm3,   :null => false, :default => false
      t.boolean :vm4,   :null => false, :default => false
      t.boolean :vm5,   :null => false, :default => false
      t.boolean :vm6,   :null => false, :default => false
      t.boolean :vm7,   :null => false, :default => false
      t.boolean :eh1,   :null => false, :default => false
      t.boolean :eh2,   :null => false, :default => false
      t.boolean :eh3,   :null => false, :default => false
      t.boolean :eh4,   :null => false, :default => false
      t.boolean :eh5,   :null => false, :default => false
      t.boolean :eh6,   :null => false, :default => false
      t.boolean :oe1,   :null => false, :default => false
      t.boolean :oe2,   :null => false, :default => false
      t.boolean :oe3,   :null => false, :default => false
      t.boolean :oe4,   :null => false, :default => false
      t.boolean :oe5,   :null => false, :default => false
      t.boolean :oe6,   :null => false, :default => false
      t.string :target, :null => false, :default => "start"

      t.belongs_to :user

      t.timestamps
    end
  end
end
