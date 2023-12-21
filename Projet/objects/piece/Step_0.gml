//Si le joueur entre en collision avec le joueur
if(place_meeting(x, y, obj_joueur) && !collecter){
	//augmente le nombre de pièces
	obj_joueur.nb_piece++;
	image_index = 0;
	collecter = true;
}

if(collecter){
	//La pièce disparait
	instance_destroy();
}
