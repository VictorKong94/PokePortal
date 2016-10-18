class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @pokemons = Pokemon.where(trainer_id: params[:id])
    @pokemons = @pokemons.sort_by { |pokemon| pokemon.name }
    @allies = Pokemon.where(trainer_id: current_trainer.id)
  end

end
