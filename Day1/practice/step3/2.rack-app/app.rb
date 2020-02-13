class App
  def call(env)
    request = Rack::Request.new(env)
    message = ""
      if request.path_info == "/goodbye"
        message = "Goodbye World"
      else
        message = "Hello World"
      end
    [
      200, # ステータスコード
      { 'Content-Type' => 'text/html; charset=utf-8' }, # Header
      ["<html><body>#{message}</body></html>"] # body
    ]
  end
end