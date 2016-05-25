class GamesController < ApplicationController
  before_action :find_game, only: [:edit, :update, :destroy, :show]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new game_params
    if @game.save
      redirect_to games_path, notice: "#{@game.title} has been created"
    else
      render :new, flash: { error: @game.errors.full_messages.to_sentence }
    end
  end

  def edit
  end

  def update
    if @game.update game_params
      redirect_to game_path @game, notice: "#{@game.title} has been updated"
    else
      render :edit, flash: { error: @game.errors.full_messages.to_sentence }
    end
  end

  def destroy
    @post.destroy
    redirect_to games_path, notice: 'Game has been deleted'
  end

  private

  def find_game
    @game = Game.find params[:id]
  end

  def game_params
    params.require(:game).permit(:title, :short_description, :description, :price)
  end
end
