# bundle exec rspec spec/system/search_spec.rb
require 'rails_helper'
RSpec.describe 'ユーザー関連', type: :system do
  before do

  end
  describe '登録施設の検索テスト' do
    context '名前で検索した場合' do
      it '施設登録が表示される' do
        FactoryBot.create(:sex1)
        FactoryBot.create(:sex2)
        FactoryBot.create(:area1)
        FactoryBot.create(:area2)
        FactoryBot.create(:facility1)
        FactoryBot.create(:chair1)
        FactoryBot.create(:chair2)
        FactoryBot.create(:facility2)
        FactoryBot.create(:chair3)
        FactoryBot.create(:chair4)
        FactoryBot.create(:facility3)
        FactoryBot.create(:chair5)
        FactoryBot.create(:chair6)
        FactoryBot.create(:facility4)
        FactoryBot.create(:chair7)
        FactoryBot.create(:chair8)
        FactoryBot.create(:facility5)
        FactoryBot.create(:chair9)
        FactoryBot.create(:chair10)
        visit root_path
        click_link '検索ページ'
        fill_in 'q_facility_name' , with: '湯けむり'
        click_button 'search'
        expect(page).to have_content '2件表示'
      end
    end
    context '名前＋性別した場合' do
      it '施設登録が表示される' do
        FactoryBot.create(:sex1)
        FactoryBot.create(:sex2)
        FactoryBot.create(:area1)
        FactoryBot.create(:area2)
        FactoryBot.create(:facility1)
        FactoryBot.create(:chair1)
        FactoryBot.create(:chair2)
        FactoryBot.create(:facility2)
        FactoryBot.create(:chair3)
        FactoryBot.create(:chair4)
        FactoryBot.create(:facility3)
        FactoryBot.create(:chair5)
        FactoryBot.create(:chair6)
        FactoryBot.create(:facility4)
        FactoryBot.create(:chair7)
        FactoryBot.create(:chair8)
        FactoryBot.create(:facility5)
        FactoryBot.create(:chair9)
        FactoryBot.create(:chair10)
        visit root_path
        click_link '検索ページ'
        binding.irb
        fill_in 'q_facility_name' , with: '湯けむり'
        page.all(".btn-outline-danger")[0].click
        click_button 'search'
        sleep 1
        expect(page).to have_content '1件表示'
      end
    end
  end
end
