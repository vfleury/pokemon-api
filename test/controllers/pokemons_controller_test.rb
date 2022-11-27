require './test/test_helper'

class PokemonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pokemon = pokemons(:bulbasaur)
  end

  test "should get index" do
    get pokemons_url, as: :json
    assert_response :success

    response_body = JSON.parse(response.body)
    assert_equal 2, response_body.size
    assert_equal pokemons(:bulbasaur).id, response_body[0]["id"]
    assert_equal pokemons(:ivysaur).id, response_body[1]["id"]
  end

  test "should create pokemon" do
    pokemon_count_before = Pokemon.count
    post pokemons_url, params: { pokemon: { attack: @pokemon.attack, defense: @pokemon.defense, generation: @pokemon.generation, hp: @pokemon.hp, legendary: @pokemon.legendary, name: @pokemon.name, number: @pokemon.number, special_attack: @pokemon.special_attack, special_defense: @pokemon.special_defense, speed: @pokemon.speed, total: @pokemon.total, type1: @pokemon.type1, type2: @pokemon.type2 } }, as: :json
    pokemon_count_after = Pokemon.count

    assert_response :created
    assert_equal pokemon_count_before + 1, pokemon_count_after

    last_pokemon = Pokemon.last
    assert_equal pokemons(:bulbasaur).name, last_pokemon.name
  end

  test "should show pokemon" do
    get pokemon_url(@pokemon), as: :json
    assert_response :success
    assert_equal pokemons(:bulbasaur).name, JSON.parse(response.body)["name"]
  end

  test "should update pokemon" do
    patch pokemon_url(@pokemon), params: { pokemon: { attack: 125, defense: @pokemon.defense, generation: @pokemon.generation, hp: @pokemon.hp, legendary: @pokemon.legendary, name: @pokemon.name, number: @pokemon.number, special_attack: @pokemon.special_attack, special_defense: @pokemon.special_defense, speed: @pokemon.speed, total: @pokemon.total, type1: @pokemon.type1, type2: @pokemon.type2 } }, as: :json
    assert_response :success
    assert_equal 125, JSON.parse(response.body)["attack"]
  end

  test "should destroy pokemon" do
    assert_difference("Pokemon.count", -1) do
      delete pokemon_url(@pokemon), as: :json
    end

    assert_response :no_content
  end
end
