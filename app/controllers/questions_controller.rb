class QuestionsController < ApplicationController
  before_filter :authorize, only: [:edit, :update, :new]

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Question Saved!"
      redirect_to('/questions')
    else
      flash[:notice] = "it didn't work!"
      render 'new'
    end
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Question Updated!"
      redirect_to ("/questions/#{@question.id}")
    else
      render "edit"
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.delete
    flash[:id] = "Question Deleted!"
    redirect_to("/questions")
  end

  private
  def question_params
    params.require(:question).permit(:question) #, :user)
  end

end
