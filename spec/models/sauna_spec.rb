require 'rails_helper'
RSpec.describe Sauna, type: :model do
  it "性別が選択されていない場合" do
    sauna = Sauna.new
    sauna.valid?
    expect(sauna.errors[:sex_id]).to include("を入力してください")
  end
end
