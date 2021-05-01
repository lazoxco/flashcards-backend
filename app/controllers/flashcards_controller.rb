class FlashcardsController < ApplicationController
  def index
    flashcards = Flashcard.all
    render json: flashcards.to_json(except: [:created_at, :updated_at], include: {topic: {only: [:name]}})
  end

  def show
    flashcard = Flashcard.find(params[:id])
    render json: flashcard.to_json(except: [:created_at, :updated_at], include: {topic: {only: [:name]}})
  end

  def create
    flashcard = Flashcard.new(flashcard_params)
    if flashcard.save
      render json: flashcard.to_json(except: [:created_at, :updated_at], include: {topic: {only: [:name]}})
    else
      render json: {error: "Sorry, could not create this flashcard."}
    end
  end

  private

  def flashcard_params
    params.require(:flashcard).permit(:question, :answer, :topic)
  end
end
