# bundle exec rspec spec/system/review_spec.rb
require 'rails_helper'
RSpec.describe '評価・コメント関連', type: :system do
  before do
    model_create
  end
  describe '評価・コメントのテスト' do
    context '作成した場合' do
      it 'searchページの新着部分に表示される' do
        visit root_path
        click_link '一般者ログイン'
        click_link 'ととのいにいく'
        fill_in 'q_facility_name' , with: 'おふろ'
        click_button 'search'
        click_link 'おふろの国'
        click_link '評価・コメントをする'
        page.all("#review_sex_女性")[0].click
        select '★4' ,from: 'review_dry'
        select '★5' ,from: 'review_light'
        select '★3' ,from: 'review_wide'
        fill_in 'review_comment' , with: '平日の18時に訪問、客層がサウナーな印象。ととのうためにイスを使っており回転率がいいように感じました。'
        click_button '投稿する'
        click_link '検索ページ'
        expect(page).to have_content 'おふろの国'
        expect(page).to have_content '平日の18時に訪問'
      end
      it 'Facility.showに評価・コメントが表示される' do
        visit root_path
        click_link '一般者ログイン'
        click_link 'ととのいにいく'
        fill_in 'q_facility_name' , with: 'おふろ'
        click_button 'search'
        click_link 'おふろの国'
        click_link '評価・コメントをする'
        page.all("#review_sex_女性")[0].click
        select '★4' ,from: 'review_dry'
        select '★5' ,from: 'review_light'
        select '★3' ,from: 'review_wide'
        fill_in 'review_comment' , with: '平日の18時に訪問、客層がサウナーな印象。ととのうためにイスを使っており回転率がいいように感じました。'
        click_button '投稿する'
        expect(page).to have_content 'おふろの国に評価投稿をしました'
        expect(page).to have_content '平日の18時に訪問'
      end
      it 'マイページの評価履歴に表示される' do
        visit root_path
        click_link '一般者ログイン'
        click_link 'ととのいにいく'
        fill_in 'q_facility_name' , with: 'おふろ'
        click_button 'search'
        click_link 'おふろの国'
        click_link '評価・コメントをする'
        page.all("#review_sex_女性")[0].click
        select '★4' ,from: 'review_dry'
        select '★5' ,from: 'review_light'
        select '★3' ,from: 'review_wide'
        fill_in 'review_comment' , with: '平日の18時に訪問、客層がサウナーな印象。ととのうためにイスを使っており回転率がいいように感じました。'
        click_button '投稿する'
        click_link 'マイページ'
        click_link '評価履歴'
        expect(page).to have_content 'おふろの国への口コミ'
        expect(page).to have_content '平日の18時に訪問'
      end
    end
    context '編集した場合' do
      it '編集後の評価・コメントが表示される' do
        visit root_path
        click_link '一般者ログイン'
        click_link 'ととのいにいく'
        fill_in 'q_facility_name' , with: 'おふろ'
        click_button 'search'
        click_link 'おふろの国'
        click_link '評価・コメントをする'
        page.all("#review_sex_女性")[0].click
        select '★4' ,from: 'review_dry'
        select '★5' ,from: 'review_light'
        select '★3' ,from: 'review_wide'
        fill_in 'review_comment' , with: '平日の18時に訪問、客層がサウナーな印象。ととのうためにイスを使っており回転率がいいように感じました。'
        click_button '投稿する'
        click_link 'マイページ'
        click_link '評価履歴'
        click_link '編集'
        page.all("#review_sex_男性")[0].click
        select '★5' ,from: 'review_light'
        fill_in 'review_comment' , with: 'サウナそのもの'
        click_button '投稿する'
        expect(page).to have_content '評価を編集しました'
        expect(page).to have_content 'サウナそのもの'
        expect(page).not_to have_content '平日の18時に訪問'
      end
    end
    context '削除した場合' do
      it 'Facility.showから削除される' do
        visit root_path
        click_link '一般者ログイン'
        click_link 'ととのいにいく'
        fill_in 'q_facility_name' , with: 'おふろ'
        click_button 'search'
        click_link 'おふろの国'
        click_link '評価・コメントをする'
        page.all("#review_sex_女性")[0].click
        select '★4' ,from: 'review_dry'
        select '★5' ,from: 'review_light'
        select '★3' ,from: 'review_wide'
        fill_in 'review_comment' , with: '平日の18時に訪問、客層がサウナーな印象。ととのうためにイスを使っており回転率がいいように感じました。'
        click_button '投稿する'
        click_link 'マイページ'
        click_link '評価履歴'
        click_link '削除'
        accept_confirm '削除します'
        expect(page).to have_content '評価を削除しました'
        expect(page).not_to have_content '平日の18時に訪問'
      end
      it 'マイページの評価履歴から削除される' do
        visit root_path
        click_link '一般者ログイン'
        click_link 'ととのいにいく'
        fill_in 'q_facility_name' , with: 'おふろ'
        click_button 'search'
        click_link 'おふろの国'
        click_link '評価・コメントをする'
        page.all("#review_sex_女性")[0].click
        select '★4' ,from: 'review_dry'
        select '★5' ,from: 'review_light'
        select '★3' ,from: 'review_wide'
        fill_in 'review_comment' , with: '平日の18時に訪問、客層がサウナーな印象。ととのうためにイスを使っており回転率がいいように感じました。'
        click_button '投稿する'
        click_link 'マイページ'
        click_link '評価履歴'
        click_link '削除'
        accept_confirm '削除します'
        click_link 'マイページ'
        click_link '評価履歴'
        expect(page).not_to have_content '平日の18時に訪問'
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
