class RelationshipsController < ApplicationController

  def create
    @house = House.find(params[:relationship][:followed_id])
    current_user.follow!(@house)
    redirect_to @house
  end

  def destroy
    @house = Relationship.find(params[:id]).followed
    current_user.unfollow!(@house)
    redirect_to @house
  end
end