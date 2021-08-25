require 'rails_helper'
RSpec.describe WaterBath, type: :model do
  it '性別が選択されていない場合' do
    water_bath = WaterBath.new
    water_bath.valid?
    expect(water_bath.errors[:sex_id]).to include('性別を選択してください')
  end
  it '温度が入力されていない場合' do
    water_bath = WaterBath.new(intern: "10")
    water_bath.valid?
    expect(water_bath.errors[:temperature]).to include('温度に数字を入力してください')
  end
  it '性別が選択されていない場合' do
    water_bath = WaterBath.new(intern: "-1")
    water_bath.valid?
    expect(water_bath.errors[:intern]).to include('収容人数に正しい数値を数字を入力してください (1〜99)')
  end
end
