require 'rails_helper'

RSpec.describe User, type: :model do

  before(:each) do
    @user = User.create!(username: "user", email: "user@email.com", password_digest: "password")
    @story = Story.create!(reading_level: 3, title: "Georgia on My Mind")
    @chapter = Chapter.create!(title: "Superstition", chapter_number: 1, story_id: @story.id)
    @sentence = Sentence.create!(text: "There been times that I thought I couldn't last for long.", chapter_id: @chapter.id)
    @round = Round.create!(player_id: @user.id, chapter_id: @chapter.id)
  end

  describe "attributes" do
    it "has a username" do
      expect(@user.username).to eq("user")
    end
    it "has an email" do
      expect(@user.email).to eq("user@email.com")
    end
    it "has a password" do
      expect(@user.password_digest).to eq("password")
    end
  end

  describe "associations" do
    it "has many stories" do
      expect(@user.stories).to match_array([@story])
    end
    it "has many chapters" do
      expect(@user.chapters).to match_array([@chapter])
    end
    it "has many sentences" do
      expect(@user.sentences).to match_array([@sentence])
    end
    it "has many rounds" do
      expect(@user.rounds).to match_array([@round])
    end
  end

end
