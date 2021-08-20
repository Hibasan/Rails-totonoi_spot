# bundle exec rspec spec/system/facility_spec.rb
require 'rails_helper'
RSpec.describe '施設関連', type: :system do
  describe '施設登録の登録テスト(管理者)' do
    context '施設情報を登録した場合' do
      it '施設登録が表示される' do
        FactoryBot.create(:user1)
        visit root_path
        admin_login
        click_link 'ととのいにいく'
        click_link '施設登録'
        fill_in 'facility_name' , with: 'おふろの国'
        select '神奈川県' ,from: 'facility_prefecture'
        fill_in 'facility_address' , with: '横浜市鶴見区下末吉２丁目２５−２３'
        page.all(".commit")[0].click
        expect(page).to have_content '施設情報を登録しました'
        expect(page).to have_content 'おふろの国'
      end
    end
    context '施設情報を編集した場合' do
      it '編集した内容が表示される' do
        FactoryBot.create(:user1)
        FactoryBot.create(:facility1)
        visit root_path
        admin_login
        click_link 'ととのいにいく'
        click_link 'おふろの国'
        click_link '情報編集'
        fill_in 'facility_name' , with: 'アスティル'
        select '東京都' ,from: 'facility_prefecture'
        fill_in 'facility_address' , with: '港区新橋３丁目１２−３'
        page.all(".commit")[0].click
        expect(page).to have_content '施設情報を編集しました'
        expect(page).to have_content 'アスティル'
      end
    end
    context '施設情報を削除した場合' do
      it 'Facility.Indexから表示がなくなる' do
        FactoryBot.create(:user1)
        FactoryBot.create(:facility1)
        visit root_path
        admin_login
        click_link 'ととのいにいく'
        click_link 'おふろの国'
        click_link '削除'
        accept_confirm '削除します'
        expect(page).to have_content '施設情報を削除しました'
        click_link '全ての施設を見る'
        expect(page).not_to have_content 'おふろの国'
      end
    end
    context '施設情報を空欄で登録した場合' do
      it 'バリデーションエラーが表示される' do
        FactoryBot.create(:user1)
        visit root_path
        admin_login
        click_link 'ととのいにいく'
        click_link '施設登録'
        fill_in 'facility_saunas_attributes_0_temperature' , with: '1'
        fill_in 'facility_water_baths_attributes_0_temperature' , with: '1'
        fill_in 'facility_chairs_attributes_0_bath' , with: '1'
        page.all(".commit")[0].click
        expect(page).to have_content '名前を入力してください'
        expect(page).to have_content '県名を入力してください'
        expect(page).to have_content '住所を入力してください'
        expect(page).to have_content 'サウナ情報の性別を入力してください'
        expect(page).to have_content '水風呂情報の性別を入力してください'
        expect(page).to have_content '休憩エリア情報の性別を入力してください'
        expect(page).to have_content '休憩エリア情報の場所を入力してください'
      end
    end
  end

  describe '施設登録の登録テスト(一般ユーザー)' do
    context '施設情報を登録した場合' do
      it '施設登録が表示される' do
        FactoryBot.create(:user2)
        visit root_path
        user_login
        click_link 'ととのいにいく'
        click_link '施設登録'
        fill_in 'facility_name' , with: 'おふろの国'
        select '神奈川県' ,from: 'facility_prefecture'
        fill_in 'facility_address' , with: '横浜市鶴見区下末吉２丁目２５−２３'
        page.all(".commit")[0].click
        expect(page).to have_content '施設情報を登録しました'
        expect(page).to have_content 'おふろの国'
      end
    end
    context '施設情報を編集した場合' do
      it '編集した内容が表示される' do
        FactoryBot.create(:user2)
        FactoryBot.create(:facility1)
        visit root_path
        user_login
        click_link 'ととのいにいく'
        click_link 'おふろの国'
        click_link '情報編集'
        fill_in 'facility_name' , with: 'アスティル'
        select '東京都' ,from: 'facility_prefecture'
        fill_in 'facility_address' , with: '港区新橋３丁目１２−３'
        page.all(".commit")[0].click
        expect(page).to have_content '施設情報を編集しました'
        expect(page).to have_content 'アスティル'
      end
    end
    context '施設情報を空欄で登録した場合' do
      it 'バリデーションエラーが表示される' do
        FactoryBot.create(:user2)
        visit root_path
        user_login
        click_link 'ととのいにいく'
        click_link '施設登録'
        fill_in 'facility_saunas_attributes_0_temperature' , with: '1'
        fill_in 'facility_water_baths_attributes_0_temperature' , with: '1'
        fill_in 'facility_chairs_attributes_0_bath' , with: '1'
        page.all(".commit")[0].click
        expect(page).to have_content '名前を入力してください'
        expect(page).to have_content '県名を入力してください'
        expect(page).to have_content '住所を入力してください'
        expect(page).to have_content 'サウナ情報の性別を入力してください'
        expect(page).to have_content '水風呂情報の性別を入力してください'
        expect(page).to have_content '休憩エリア情報の性別を入力してください'
        expect(page).to have_content '休憩エリア情報の場所を入力してください'
      end
    end
  end

  private
  def admin_login
    click_link 'ログイン'
    fill_in 'user_email',with: 'test01@email.com'
    fill_in 'user_password',with: 'password'
    click_button 'ログイン'
  end

  def user_login
    click_link 'ログイン'
    fill_in 'user_email',with: 'test02@email.com'
    fill_in 'user_password',with: 'password'
    click_button 'ログイン'
  end
end
