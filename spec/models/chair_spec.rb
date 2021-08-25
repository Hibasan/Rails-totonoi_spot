require 'rails_helper'
RSpec.describe Chair, type: :model do
  it '性別が選択されていない場合' do
    chair = Chair.new
    chair.valid?
    expect(chair.errors[:sex_id]).to include('性別を選択してください')
  end
  it '休憩場所が選択されていない場合' do
    chair = Chair.new
    chair.valid?
    expect(chair.errors[:rest_area_id]).to include('室内/室外をを選択してください')
  end
  it 'deckがマイナス入力の場合' do
    chair = Chair.new(deck: "-1")
    chair.valid?
    expect(chair.errors[:deck]).to include('正しい数値を入力してください(1〜99)')
  end
  it 'bathがマイナス入力の場合' do
    chair = Chair.new(bath: "-1")
    chair.valid?
    expect(chair.errors[:bath]).to include('正しい数値を入力してください(1〜99)')
  end
  it 'benchがマイナス入力の場合' do
    chair = Chair.new(bench: "-1")
    chair.valid?
    expect(chair.errors[:bench]).to include('正しい数値を入力してください(1〜99)')
  end
  it 'bench_non_backrestがマイナス入力の場合' do
    chair = Chair.new(bench_non_backrest: "-1")
    chair.valid?
    expect(chair.errors[:bench_non_backrest]).to include('正しい数値を入力してください(1〜99)')
  end
  it 'relaxがマイナス入力の場合' do
    chair = Chair.new(relax: "-1")
    chair.valid?
    expect(chair.errors[:relax]).to include('正しい数値を入力してください(1〜99)')
  end

end
