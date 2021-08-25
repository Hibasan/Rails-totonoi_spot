require 'rails_helper'
RSpec.describe Sauna, type: :model do
  it '性別が選択されていない場合' do
    sauna = Sauna.new
    sauna.valid?
    expect(sauna.errors[:sex_id]).to include('性別を選択してください')
  end
  it '温度がマイナス入力の場合' do
    sauna = Sauna.new(temperature: "-1")
    sauna.valid?
    expect(sauna.errors[:temperature]).to include('温度に正しい数字を入力してください (1〜)')
  end
  it '収容人数がマイナス入力の場合' do
    sauna = Sauna.new(intern: "-1")
    sauna.valid?
    expect(sauna.errors[:intern]).to include('収容人数に正しい数字を入力してください (1〜99)')
  end
end
