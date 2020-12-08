class BookCommentsController < ApplicationController
  def create
    post_book = Book.find(params[:book_id])
    @post_book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = post_book.id
    comment.save
  end

  def destroy
    @post_book = Book.find(params[:book_id])
    BookComment.find_by(id: params[:id], book_id: params[:book_id]).destroy
  end

   private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
