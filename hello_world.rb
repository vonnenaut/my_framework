# hello_world.rb
require_relative 'advice'  

class HelloWorld
  def call(env)
    case env['REQUEST_PATH']
    when '/'
<<<<<<< HEAD
      template = File.read("views/index.erb")
      content = ERB.new(template)
      ['200', {"Content-Type" => 'text/html'}, ["Hello World!"]]
    when '/advice'
      piece_of_advice = Advice.new.generate
      ['200', {'Content-Type' => 'text/html'}, [piece_of_advice]]
    else
      [
        '404',
        {"Content-Type" => 'text/html', "Content-Length" => '48'},
        ["404 Not Found"]
=======
      [
        '200',
        {"Content-Type" => 'text/html'},
        ["<html><body>Hello World!</body></html>"]
      ]
    when '/advice'
      piece_of_advice = Advice.new.generate
      [
        '200',
        {'Content-Type' => 'text/html'},
        ["<html><body><b><em>#{piece_of_advice}</em></b></body></html>"]
      ]
    else
      [
        '404',
        {"Content-Type" => 'text/html', "Cntent-Length" => '13'},
      ["<html><body><h4>404 Not Found</h4></body></html>"]
>>>>>>> 8a57d8cfb78da2b34b39bcedf94495f8c313cec9
      ]
    end
  end
end
