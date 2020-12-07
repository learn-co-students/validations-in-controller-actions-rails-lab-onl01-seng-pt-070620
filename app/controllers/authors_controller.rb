class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new (author_params)
    if @author.valid? 
      @author.save 
      redirect_to author_path(@author)
    else 
      render :new 
    end 
    # # 
    # # check if the author attempting to be created is valid with valid?, if it 
    # # is go through the usual
    # # else RE RENDER the form dont redirect so that we can show feedback 
    # @author = Author.create!(author_params)


    # redirect_to author_path(@author)
    # end 
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end