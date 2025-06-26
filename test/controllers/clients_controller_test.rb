require "test_helper"

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one) # Assuming you have a fixture named 'one' in test/fixtures/clients.yml
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { name: 'New Client', email: 'new@example.com', phone: '123-456-7890', address: '123 Main St', notes: 'Some notes' } }
    end
    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { name: 'Updated Client', email: 'updated@example.com', phone: '098-765-4321', address: '456 Another St', notes: 'Updated notes' } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end
    assert_redirected_to clients_url
  end
end