require "test_helper"

class ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one) # Assuming you have a client fixture
    @contact = contacts(:one) # Assuming you have a contact fixture
  end

  test "should get index" do
    get contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_url
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post contacts_url, params: { contact: { name: 'New Contact', email: 'new@example.com', phone: '123-456-7890', position: 'Manager', client_id: @client.id } }
    end
    assert_redirected_to contact_url(Contact.last)
  end

  test "should show contact" do
    get contact_url(@contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_url(@contact)
    assert_response :success
  end

  test "should update contact" do
    patch contact_url(@contact), params: { contact: { name: 'Updated Contact', email: 'updated@example.com', phone: '098-765-4321', position: 'Director', client_id: @client.id } }
    assert_redirected_to contact_url(@contact)
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete contact_url(@contact)
    end
    assert_redirected_to contacts_url
  end
end