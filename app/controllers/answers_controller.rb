class AnswersController < ActionController::Base
  def new
    @answer = Answer.new
  end

  def create
    @answer = Answer.new(answer_params)
  end


  private
  def answer_params

  end

end
