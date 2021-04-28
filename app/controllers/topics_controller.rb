class TopicsController < ApplicationController
  def index
    topics = Topic.all
    render json: topics.to_json(except: [:created_at, :updated_at], include: {flashcards: {only: [:question, :answer]}})
  end
end
