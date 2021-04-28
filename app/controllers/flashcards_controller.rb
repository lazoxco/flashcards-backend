class FlashcardsController < ApplicationController
  def index
    flashcards = Flashcard.all
    render json: flashcards.to_json(except: [:created_at, :updated_at], include: {topic: {only: [:name]}})
  end

  def show
    flashcard = Flashcard.find(params[:id])
    render json: flashcard.to_json(except: [:created_at, :updated_at], include: {topic: {only: [:name]}})
  end
end
