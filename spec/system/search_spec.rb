# bundle exec rspec spec/system/search_spec.rb
require 'rails_helper'
RSpec.describe '検索関連', type: :system do
  describe '登録施設の検索テスト' do
    context '名前で検索した場合' do
      it '施設登録が表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        fill_in 'q_facility_name' , with: '湯けむり'
        click_button 'search'
        expect(page).to have_content '2件表示'
      end
    end
    context '名前＋性別した場合' do
      it '施設登録が表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        fill_in 'q_facility_name' , with: '湯けむり'
        page.all(".btn-outline-danger")[0].click
        click_button 'search'
        sleep 1
        expect(page).to have_content '1件表示'
      end
    end
    context '性別＋設備で検索した場合' do
      it '施設登録が表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        page.all(".btn-outline-primary")[0].click
        page.all(".btn-primary")[1].click
        click_button 'search'
        sleep 1
        expect(page).to have_content '4件表示'
      end
    end
    context '空欄で検索した場合' do
      it 'すべての施設が表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        click_button 'search'
        sleep 1
        expect(page).to have_content '5件表示'
      end
    end
  end

  describe '登録施設の検索テスト' do
    context '全ての施設を見るを押した場合' do
      it '全ての施設が表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        click_link '全ての施設を見る'
        expect(page).to have_content '5件表示'
      end
    end
    context '東京都を押した場合' do
      it '１件表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        click_link '東京'
        sleep 1
        expect(page).to have_content '1件表示'
      end
    end
    context '神奈川を押した場合' do
      it '４件表示される' do
        model_create
        visit root_path
        click_link '検索ページ'
        click_link '神奈川'
        sleep 1
        expect(page).to have_content '4件表示'
      end
    end
  end

  private
  def model_create
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
  end

end
