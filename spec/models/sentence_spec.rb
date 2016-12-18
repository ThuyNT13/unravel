require 'rails_helper'

RSpec.describe Sentence, type: :model do

  before(:each) do
    @user = User.create!(username: "user", email: "user@email.com", password_digest: "password")
    @story = Story.create!(reading_level: 3, title: "Georgia on My Mind")
    @chapter = Chapter.create!(title: "Superstition", chapter_number: 1, story_id: @story.id)
    @sentence = Sentence.create!(text: "There been times that I thought I couldn't last for long.", chapter_id: @chapter.id)
    @round = Round.create!(player_id: @user.id, chapter_id: @chapter.id)
  end

  describe "attributes" do
    it "has text" do
      expect(@sentence.text).to eq("There been times that I thought I couldn't last for long.")
    end
  end

  describe "associations" do
    it "has many players" do
      expect(@sentence.players).to match_array(@user)
    end
    it "has one chapter" do
      expect(@sentence.chapter).to eq(@chapter)
    end
    it "has one story" do
      expect(@sentence.story).to eq(@story)
    end
    it "has many rounds" do
      expect(@sentence.rounds).to match_array([@round])
    end
  end

end
