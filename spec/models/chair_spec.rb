require 'rails_helper'
RSpec.describe Chair, type: :model do
    it "性別が選択されていない場合" do
      chair = Chair.new
      chair.valid?
      expect(chair.errors[:sex_id]).to include("を入力してください")
    end
    it "休憩場所が選択されていない場合" do
      chair = Chair.new
      chair.valid?
      expect(chair.errors[:rest_area_id]).to include("を入力してください")
    end
end
