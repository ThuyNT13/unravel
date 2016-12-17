require 'rails_helper'

RSpec.describe Round, type: :model do

  before(:each) do
    @user = User.create!(username: "user", email: "user@email.com", password_digest: "password")
    @story = Story.create!(reading_level: 3, title: "Georgia on My Mind")
    @chapter = Chapter.create!(title: "Superstition", chapter_number: 1, story_id: @story.id)
    @sentence = Sentence.create!(text: "There been times that I thought I couldn't last for long.", chapter_id: @chapter.id)
    @round = Round.create!(player_id: @user.id, chapter_id: @chapter.id)
  end

  describe "associations" do
    it "has one player" do
      expect(@round.player).to eq(@user)
    end
    it "has one story" do
      expect(@round.story).to eq(@story)
    end
    it "has one chapter" do
      expect(@round.chapter).to eq(@chapter)
    end
    it "has many sentences" do
      expect(@round.sentences).to match_array(@sentence)
    end
  end

end
