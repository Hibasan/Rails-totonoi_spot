require 'rails_helper'
RSpec.describe WaterBath, type: :model do
  it "性別が選択されていない場合" do
    water_bath = WaterBath.new
    water_bath.valid?
    expect(water_bath.errors[:sex_id]).to include("を入力してください")
  end
end
