require 'rails_helper'

describe Topic do
  # タイトルがあれば有効な状態であること
  it "is valid with content" do
    topic = Topic.new(content: '暑いです')
    expect(topic).to be_valid
  end
  #タイトルがなければ無効であること
  it "is invalid without a content" do
    topic = Topic.new
    expect(topic).not_to be_valid
  end
end
