//Lorsque que le joueur appuie sur la flèche directionnelle de gauche
if keyboard_check(vk_left)
{
	//déplace le joueur vers la gauche
	x = x - 2;
	sprite_index = joueurGauche;
}
//Lorsque que le joueur appuie sur la flèche directionnelle de droite
if keyboard_check(vk_right)
{
	//déplace le joueur vers la droite 
	x = x + 2;
	sprite_index = joueurDroit;
}
//Lorsque que le joueur appuie sur la flèche directionnelle du haut
if keyboard_check(vk_up)
{
	//déplace le joueur vers le haut
	y = y - 2;
	sprite_index = joueurHaut;
}
//Lorsque que le joueur appuie sur la flèche directionnelle du bas
if keyboard_check(vk_down)
{
	//déplace le joueur vers le bas
	y = y + 2;
	sprite_index = joueurBas;
}




// Activer le champ de texte lorsque le joueur appuie sur la barre d'espace et si le joueur se situe à proximité du pnj2
if (distance_to_object(pnj2) < 10 && keyboard_check_pressed(vk_space)) {
	//récupère le comportement du pnj2
	comportement = pnj2.comportement;
	//active le champ de texte
    text_input_active = true;
}

// Activer le champ de texte lorsque le joueur appuie sur la barre d'espace et si le joueur se situe à proximité du pnj1
if (distance_to_object(pnj1) < 10 && keyboard_check_pressed(vk_space)) {
	//récupère le comportement du pnj1
	comportement = pnj1.comportement;
	//active le champ de texte
    text_input_active = true;
}

if (distance_to_object(pnj3) < 10 && keyboard_check_pressed(vk_space)) {
	//récupère le comportement du pnj1
	comportement = pnj3.comportement;
	//active le champ de texte
    text_input_active = true;
}

if (distance_to_object(pnj4) < 10 && keyboard_check_pressed(vk_space)) {
	//récupère le comportement du pnj1
	comportement = pnj4.comportement;
	//active le champ de texte
    text_input_active = true;
}

// Si le champ de texte est actif, gérer les entrées clavier
if (text_input_active) {
    var input_char = keyboard_lastchar;
    
    // Gérer la suppression du texte avec la touche Espace
    if (keyboard_check_pressed(vk_backspace) && string_length(keyboard_string) > 0) {
        keyboard_string = string_delete(keyboard_string, string_length(keyboard_string) - 1, 1);
    }

    // Lorsque le joueur appuie sur "Entrée", envoyez la question à l'API et désactivez le champ de texte
    if (keyboard_check_pressed(vk_enter)) {
        send_gpt(keyboard_string, comportement);
        keyboard_string = ""; 
        text_input_active = false; 
    }
}



// Événement Step de l'objet joueur
if (place_meeting(x + hspeed, y, TileSet2)) {
    // Collision à droite
    hspeed = 0;
}

if (place_meeting(x, y + vspeed, TileSet2)) {
    // Collision en bas
    vspeed = 0;
}







