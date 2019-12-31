require 'sinatra'

get '/' do
	erb :index
end

post '/dilo' do
	@msj = params[:dilo]
        erb :respuesta
end

__END__
@@ index

<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Abuela sorda</title>
</head>
<body>
  <h1>Abuela sorda</h1>
  <form action="/dilo" method="post">
    <label>Dí algo abuela:</label>
    <input type="text" value="" id="dilo" name="dilo">
    <input type="submit" value="Dilo!">
  </form>
</body>
</html>

@@ respuesta

<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Respuesta</title>
</head>
<body>
  <%if @msj.upcase === @msj %>
    <h1>Ahhh si, manzanas!</h1>
  <%else%>
    <h1>Habla más duro mijito</h1>
  <%end%>
</body>
</html>


