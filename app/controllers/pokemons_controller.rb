class PokemonsController < ApplicationController

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health -= 10
    @pokemon.health <= 0 ? @pokemon.destroy : @pokemon.save
    redirect_to :back
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(new_params)
    @pokemon.trainer_id = current_trainer.id
    @pokemon.level = 1
    @pokemon.health = 100
    if @pokemon.save
      flash[:error] = nil
      redirect_to current_trainer
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      render 'pokemons/new'
    end
  end

  private

  def new_params
    params.require(:pokemon).permit(:name)
  end
  
end