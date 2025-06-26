require "test_helper"

class Clients::OpportunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one) # Assuming you have a client fixture
    @opportunity = opportunities(:one) # Assuming you have an opportunity fixture
  end

  test "should get index" do
    get client_opportunities_url(@client)
    assert_response :success
  end

  test "should get new" do
    get new_client_opportunity_url(@client)
    assert_response :success
  end

  test "should create opportunity" do
    assert_difference('Opportunity.count') do
      post client_opportunities_url(@client), params: { opportunity: { title: 'New Opportunity', description: 'Some description', value: 1000.00, status: 'Lead', close_date: Date.today } }
    end
    assert_redirected_to client_opportunity_url(@client, Opportunity.last)
  end

  test "should show opportunity" do
    get client_opportunity_url(@client, @opportunity)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_opportunity_url(@client, @opportunity)
    assert_response :success
  end

  test "should update opportunity" do
    patch client_opportunity_url(@client, @opportunity), params: { opportunity: { title: 'Updated Opportunity', description: 'Updated description', value: 2000.00, status: 'Won', close_date: Date.tomorrow } }
    assert_redirected_to client_opportunity_url(@client, @opportunity)
  end

  test "should destroy opportunity" do
    assert_difference('Opportunity.count', -1) do
      delete client_opportunity_url(@client, @opportunity)
    end
    assert_redirected_to client_opportunities_url(@client)
  end
end