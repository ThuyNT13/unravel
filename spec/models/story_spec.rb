require 'rails_helper'

RSpec.describe Story, type: :model do

  before(:each) do
    @user = User.create!(username: "user", email: "user@email.com", password_digest: "password")
    @story = Story.create!(reading_level: 3, title: "Georgia on My Mind")
    @chapter = Chapter.create!(title: "Superstition", chapter_number: 1, story_id: @story.id)
    @sentence = Sentence.create!(text: "There been times that I thought I couldn't last for long.", chapter_id: @chapter.id)
    @round = Round.create!(player_id: @user.id, sentence_id: @sentence.id)
  end

  describe "attributes" do
    it "has a reading_level" do
      expect(@story.reading_level).to eq(3)
    end
    it "has a title" do
      expect(@story.title).to eq("Georgia on My Mind")
    end
  end

  describe "associations" do
    it "has many players" do
      expect(@story.players).to match_array(@user)
    end
    it "has many chapters" do
      expect(@story.chapters).to match_array(@chapter)
    end
    it "has many sentences" do
      expect(@story.sentences).to match_array(@sentence)
    end
    it "has many rounds" do
      expect(@story.rounds).to match_array(@round)
    end
  end

end
