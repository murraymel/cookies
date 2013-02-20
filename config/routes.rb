Cookies::Application.routes.draw do
  get '/hi' => 'Greetings#hello'
  post '/mynameis' => 'Greetings#introduce'
end
