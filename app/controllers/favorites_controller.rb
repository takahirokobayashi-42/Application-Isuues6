class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    post_book = Book.find(params[:book_id])
    favorite = current_user.favorites.new(book_id: post_book.id)
    favorite.save
  end

  def destroy
    @book = Book.find(params[:book_id])
    post_book = Book.find(params[:book_id])
    favorite = current_user.favorites.find_by(book_id: post_book.id)
    favorite.destroy
  end

end
