require 'rails_helper'
RSpec.describe Facility, type: :model do
  it '名前が空欄のときの登録' do
    facility = Facility.new
    facility.valid?
    expect(facility.errors[:name]).to include('を入力してください')
  end
  it '県名が空欄のときの登録' do
    facility = Facility.new
    facility.valid?
    expect(facility.errors[:prefecture]).to include('を入力してください')
  end
  it '住所が空欄のときの登録' do
    facility = Facility.new
    facility.valid?
    expect(facility.errors[:address]).to include('を入力してください')
  end
  it '施設名がユニークレスの登録' do
    Facility.create(name: 'おふろの国', prefecture: '神奈川県', address: '横浜市')
    facility = Facility.new(name: 'おふろの国')
    facility.valid?
    expect(facility.errors[:name]).to include('はすでに存在します')
  end
  it 'ホームページ(URL)が不正な値のときの登録' do
    facility = Facility.new(homepage: 'omega_sister')
    facility.valid?
    expect(facility.errors[:homepage]).to include('httpもしくはhttpsから始まる文字を入力してください')
  end
end
