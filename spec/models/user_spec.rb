require 'rails_helper'
RSpec.describe User, type: :model do
  it "名前が空欄のときの登録" do
    user = User.new(name: nil)
    user.valid?
    expect(user.errors[:name]).to include("を入力してください")
  end
  it "メールアドレスが空欄のときの登録" do
    user = User.new(email: nil)
    user.valid?
    expect(user.errors[:email]).to include("を入力してください")
  end

  it "メールアドレスが入力規則通りじゃないときの登録" do
    user = User.new(email: "おめシスはいいぞ")
    user.valid?
    expect(user.errors[:email]).to include("は不正な値です")
  end

  it "パスワードが5文字以下の場合" do
    user = User.new(password: "pass",password_confirmation: 'pass')
    user.valid?
    expect(user.errors[:password]).to include("は6文字以上で入力してください")
  end

  it "確認用パスワードが間違っている場合" do
    user = User.new(password: "password",password_confirmation: 'wordpass')
    user.valid?
    expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
  end

  it "メールアドレスがユニークレスの登録" do
    User.create(name:"おめシス" ,email: "test01@email.comn",password: "password",password_confirmation: 'password', confirmed_at: Time.now, admin: true)
    user = User.new(email: "test01@email.comn")
    user.valid?
    expect(user.errors[:email]).to include("はすでに存在します")
  end
end
