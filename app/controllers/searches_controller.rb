class SearchesController < ApplicationController
  def search
    @range = params[:range]
    search = params[:search]
    @word = params[:word]

    if @range == '1'
      p @range
      @user = User.search(search,@word)
p @user
    else
      @book = Book.search(search,@word)
    end

  end
end

