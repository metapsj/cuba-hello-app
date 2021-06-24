require_relative 'helper'

scope do
  # res.headers["Content-Type"] = "text/plain"

  test '/test' do
    get "/test"
    assert_equal "/test", last_response.body
  end

  test '/hello' do
    get "hello"
    assert_equal "/hello", last_response.body
  end

  test "root" do
    get "/"
    assert_equal "Welcome to the HelloApp!", last_response.body
  end

end
