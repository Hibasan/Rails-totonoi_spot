# bundle exec rspec spec/system/favorite_spec.rb
require 'rails_helper'
RSpec.describe 'お気に入り関連', type: :system do
  before do
    sleep 1
  end
  describe 'お気に入り機能のテスト' do
    context 'お気に入りの登録/解除した場合' do
      it 'マイページのお気に入り一覧に追加/削除される' do
        model_create
        visit root_path
        click_link '一般者ログイン'
        click_link '検索ページ'
        click_link 'みうら湯'
        click_link 'お気に入り追加'
        click_link '検索ページ'
        click_link '綱島源泉'
        click_link 'お気に入り追加'
        click_link '検索ページ'
        click_link '宮前平'
        click_link 'お気に入り追加'
        click_link 'マイページ'
        click_link 'お気に入り施設'
        expect(page).to have_content 'みうら湯'
        expect(page).to have_content '宮前平'
        expect(page).to have_content '綱島源泉'
        click_link '検索ページ'
        click_link 'みうら湯'
        click_link 'お気に入り解除'
        click_link '検索ページ'
        click_link '綱島源泉'
        click_link 'お気に入り解除'
        click_link '検索ページ'
        click_link '宮前平'
        click_link 'お気に入り解除'
        click_link 'マイページ'
        click_link 'お気に入り施設'
        expect(page).not_to have_content 'みうら湯'
        expect(page).not_to have_content '宮前平'
        expect(page).not_to have_content '綱島源泉'
      end
    end
  end
  private
  def model_create
    FactoryBot.create(:facility1)
    FactoryBot.create(:facility2)
    FactoryBot.create(:facility3)
    FactoryBot.create(:facility4)
    FactoryBot.create(:facility5)
  end
end
