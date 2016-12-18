require 'rails_helper'

RSpec.describe Chapter, type: :model do

  before(:each) do
    @user = User.create!(username: "user", email: "user@email.com", password_digest: "password")
    @story = Story.create!(reading_level: 3, title: "Georgia on My Mind")
    @chapter = Chapter.create!(title: "Superstition", chapter_number: 1, story_id: @story.id)
    @sentence = Sentence.create!(text: "There been times that I thought I couldn't last for long.", chapter_id: @chapter.id)
    @round = Round.create!(player_id: @user.id, chapter_id: @chapter.id)
  end

  describe "attributes" do
    it "has a title" do
      expect(@chapter.title).to eq("Superstition")
    end
    it "has a chapter" do
      expect(@chapter.chapter_number).to eq(1)
    end
  end

  describe "associations" do
    it "has many players" do
      expect(@chapter.players).to match_array(@user)
    end
    it "has one story" do
      expect(@chapter.story).to eq(@story)
    end
    it "has many sentences" do
      expect(@chapter.sentences).to match_array(@sentence)
    end
    it "has many rounds" do
      expect(@chapter.rounds).to match_array(@round)
    end
  end

end
