require './test/test_helper'

class PokemonTest < ActiveSupport::TestCase
  setup do
    @pokemon = pokemons(:one)
  end

  test 'valid pokemon' do
    assert @pokemon.valid?
  end

  %w[number name type1 total hp attack defense special_attack special_defense speed generation legendary].each do |property|
    test "invalid without #{property}" do
      @pokemon.send("#{property}=", nil)
      refute @pokemon.valid?, "saved pokemon without a #{property}"
    end
  end
end
