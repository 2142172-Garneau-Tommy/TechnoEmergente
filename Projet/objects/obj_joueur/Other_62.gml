var taille = ds_map_size(async_load);
var _cle = ds_map_find_first(async_load);
for (var i = 0; i < taille; ++i) {
    if (_cle == "result") {
        show_debug_message(async_load[? _cle]);
        
        var _message = json_parse(async_load[? _cle]);
        
        var nombre = array_length(_message.choices);
        afficher_texte = "";
        for (var j = 0; j < nombre; ++j) {
            afficher_texte += _message.choices[j].text;
            afficher_texte += "\n";
        }
    }
    
    _cle = ds_map_find_next(async_load, _cle);
}
