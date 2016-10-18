class PokemonsController < ApplicationController

  def capture
    @trainer_name = current_trainer.name
    @pokemon = Pokemon.find(params[:id])
    @pokemon.name = "#{@trainer_name}'s #{@pokemon.name}"
    @pokemon.trainer_id = current_trainer.id
    @pokemon.save
    redirect_to root_path
  end

  def damage
    # Find pokemon involved in battle
    @enemy = Pokemon.find(params[:enemy])
    @ally = Pokemon.find(params[:ally])
    
    # Compute damage dealt to enemy pokemon
    damage = 5 * [@ally.level - @enemy.level, 1].max
    @enemy.health = [@enemy.health - damage, 0].max
    @enemy.save

    # Compute experience gained for defeating an enemy pokemon
    if @enemy.health == 0
      experience = 5 * [@enemy.level - @ally.level, 1].max
      @ally.experience = @ally.experience + experience
      if @ally.experience >= 10 * @ally.level
        @ally.level += 1
        @ally.health = 100
        @ally.experience = 0
      end
      @ally.save
    end

    # Redirect to enemy pokemon's trainer
    redirect_to :back
  end

  def heal
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health += 10
    @pokemon.save
    redirect_to :back
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @trainer_name = current_trainer.name
    @pokemon_name = new_params[:name]
    @pokemon = Pokemon.new
    @pokemon.name = "#{@trainer_name}'s #{@pokemon_name}"
    @pokemon.trainer_id = current_trainer.id
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.experience = 0
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