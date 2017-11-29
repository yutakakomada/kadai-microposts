class Relationship2sController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:like_id])
    current_user.like(micropost)
    flash[:success] = '投稿を「お気に入り」に追加しました。'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:like_id])
    current_user.unlike(micropost)
    flash[:success] = '投稿を「お気に入り」から除外しました。'
    redirect_to root_url   
  end
end

