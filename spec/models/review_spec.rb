require 'rails_helper'
RSpec.describe Review, type: :model do
  it "性別が選択されていない場合" do
    review = Review.new
    review.valid?
    expect(review.errors[:sex]).to include("を入力してください")
  end
end
