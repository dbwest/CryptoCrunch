require 'test_helper'

class CurrenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currency = currencies(:one)
  end

  test "should get index" do
    get currencies_url
    assert_response :success
  end

  test "should get new" do
    get new_currency_url
    assert_response :success
  end

  test "should create currency" do
    assert_difference('Currency.count') do
      post currencies_url, params: { currency: { arbitrage_activity: @currency.arbitrage_activity, countries_ico_available: @currency.countries_ico_available, ico_date: @currency.ico_date, mining_difficulty: @currency.mining_difficulty, needs_blockchain: @currency.needs_blockchain, scam_sale_probability: @currency.scam_sale_probability, smart_money_investors: @currency.smart_money_investors, team: @currency.team, team_market_percent: @currency.team_market_percent, team_rating: @currency.team_rating, vertical: @currency.vertical } }
    end

    assert_redirected_to currency_url(Currency.last)
  end

  test "should show currency" do
    get currency_url(@currency)
    assert_response :success
  end

  test "should get edit" do
    get edit_currency_url(@currency)
    assert_response :success
  end

  test "should update currency" do
    patch currency_url(@currency), params: { currency: { arbitrage_activity: @currency.arbitrage_activity, countries_ico_available: @currency.countries_ico_available, ico_date: @currency.ico_date, mining_difficulty: @currency.mining_difficulty, needs_blockchain: @currency.needs_blockchain, scam_sale_probability: @currency.scam_sale_probability, smart_money_investors: @currency.smart_money_investors, team: @currency.team, team_market_percent: @currency.team_market_percent, team_rating: @currency.team_rating, vertical: @currency.vertical } }
    assert_redirected_to currency_url(@currency)
  end

  test "should destroy currency" do
    assert_difference('Currency.count', -1) do
      delete currency_url(@currency)
    end

    assert_redirected_to currencies_url
  end
end
