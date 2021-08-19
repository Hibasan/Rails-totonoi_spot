# bundle exec rspec spec/system/search_spec.rb

require 'rails_helper'
RSpec.describe 'ユーザー関連', type: :system do

  describe '登録施設の検索テスト' do
    context '名前で検索したばあい' do
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

      end
    end
  end
end
