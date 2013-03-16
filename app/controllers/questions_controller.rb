class QuestionsController < ApplicationController

  def index
    @policy = Policy.find(params[:policy_id])
    @questions = @policy.questions    
  end

  def show
    @question = Question.find(params[:question_id])
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:question_id])
  end 

  def create
    @question = Question.new(params[:question])
    if @question.save
      redirect_to @question.policy, notice: 'Question was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @question = @question.find(params[:question_id])
    if @question.update_attributes(params[:question])
      redirect_to @question.policy, notice: 'Question was successfully updated.'
    else
      render action: 'edit'
    end
  end

end
