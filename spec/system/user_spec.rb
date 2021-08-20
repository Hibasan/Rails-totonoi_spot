# bundle exec rspec spec/system/user_spec.rb
require 'rails_helper'
RSpec.describe 'ユーザー関連', type: :system do
  before do
    create_model
    sleep 1
  end
  describe 'ユーザー登録のテスト' do
    context 'ユーザーが新規登録した場合' do
      it '認証メールが送信されること' do
        visit root_path
        click_link 'アカウント登録'
        fill_in 'user_name' , with: 'おめシス'
        fill_in 'user_email',with: 'test10@email.com'
        fill_in 'user_password',with: 'password'
        fill_in 'user_password_confirmation',with: 'password'
        binding.irb
        click_button 'アカウント登録'
        expect(page).to have_content 'オープンレターにメール届かない'
      end
    end
  end

  describe 'ユーザーログインのテスト' do
    context 'ユーザーがログインした場合' do
      it 'ログインしてトップページが表示される' do
        visit root_path
        admin_login
        expect(page).to have_content 'ログインしました'
        expect(current_path).to eq root_path
      end
    end
  end

  describe '未ログインのリンク表示テスト' do
    context 'ログインしていない場合' do
      it '施設登録が表示されない' do
        visit root_path
        click_link 'ととのいにいく'
        expect(page).not_to have_content '施設登録'
      end
      it 'マイページ機能が表示されない' do
        visit root_path
        click_link 'ととのいにいく'
        click_link 'おふろの国'
        expect(page).not_to have_content 'コメントをする'
        expect(page).not_to have_content 'お気に入り追加'
        expect(page).not_to have_content '情報編集'
        expect(page).not_to have_content '削除'
      end
    end
  end

  describe '一般ユーザーのリンク表示テスト' do
    context '一般ユーザーでログインしている場合' do
      it '施設の削除リンクがない' do
        visit root_path
        user_login
        click_link 'ととのいにいく'
        click_link 'おふろの国'
        expect(page).not_to have_content '削除'
      end
      it 'マイページに管理者画面リンクがない' do
        visit root_path
        user_login
        click_link 'マイページ'
        expect(page).not_to have_content '管理者画面へ移動'
      end
    end
  end

  describe '未ログインのアクセス権テスト' do
    context 'ログインしていない場合' do
      it 'マイページにアクセスできない' do
        visit root_path
        visit user_path(1)
        expect(page).to have_content 'ログインもしくはアカウント登録してください。'
      end
      it '評価履歴にアクセスできない' do
        visit root_path
        visit users_review_path
        expect(page).to have_content 'ログインもしくはアカウント登録してください。'
      end
      it 'お気に入り一覧にアクセスできない' do
        visit root_path
        visit users_favorite_facilities_path
        expect(page).to have_content 'ログインもしくはアカウント登録してください。'
      end
      it '施設登録にアクセスできない' do
        visit root_path
        visit new_facility_path
        expect(page).to have_content 'ログインもしくはアカウント登録してください。'
      end
      it '評価画面にアクセスできない' do
        visit root_path
        visit new_review_path
        expect(page).to have_content 'ログインもしくはアカウント登録してください。'
      end
      it '管理者画面にアクセスできない' do
        visit root_path
        visit rails_admin_path
        expect(page).to have_content 'ログインもしくはアカウント登録してください。'
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

  def create_model
    FactoryBot.create(:user1)
    FactoryBot.create(:user2)
    FactoryBot.create(:facility1)
  end
end
