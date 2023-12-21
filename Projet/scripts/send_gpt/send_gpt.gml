//envoie une requête à l'api de chatGPT en passant en paramètres une question et un comportement
function send_gpt(_question, _comportement){
	
	var map = ds_map_create();
	
	ds_map_add(map, "Authorization", "Bearer " + APIKEY);
	ds_map_add(map, "Content-Type", "application/json");

	var _data = {
					//Le modèle de l'api`
					"model": "text-davinci-003",
					//La question et le comportement
					"prompt": _question + " " + _comportement,
					//Le nombre de caractères que peux généré la réponse
					"max_tokens": int64(150),
					//La cohérance et la créativité des réponses généré par l'api
					"temperature": 0.5,
					//Le nombre de réponse généré par l'api
					"n": int64(1),
				}
			
	//Convertie les données en JSON
	var data = json_stringify(_data)


	//Envoie la requête http à l'api en utilisant les paramètres
	request = http_request("https://api.openai.com/v1/completions", "POST", map, data);

	//Affiche un message indiquant que la requête est en train de charger
	display_string = "Chargement"

	//Envoie des messages à la console pour indique que la requête à belle et bien été envoyé
	show_debug_message("Requête envoyée")
	show_debug_message(request)
	show_debug_message(data)

	ds_map_destroy(map)

}