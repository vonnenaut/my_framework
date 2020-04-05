# hello_world.rb
require_relative 'advice'  

class HelloWorld
  def call(env)
    case env['REQUEST_PATH']
    when '/'
      ['200', {"Content-Type" => 'text/plain'}, ["Hello World!"]]
    when '/advice'
      piece_of_advice = Advice.new.generate
      ['200', {'Content-Type' => 'text/plain'}, [piece_of_advice]]
    else
      [
        '404',
        {"Content-Type" => 'text/plain', "Cntent-Length" => '13'},
        ["404 Not Found"]
      ]
    end
  end
end
