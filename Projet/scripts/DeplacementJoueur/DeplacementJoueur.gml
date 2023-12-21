function DeplacementJoueur(){
	//déplace le joueur vers la gauche
	if keyboard_check(vk_left)
	{
		x = x - 2;
	}
	//déplace le joueur vers la droite
	if keyboard_check(vk_right)
	{
		x = x + 2;
	}
	//déplace le joueur vers le haut
	if keyboard_check(vk_up)
	{
		y = y - 2;
	}
	//déplace le joueur vers le bas
	if keyboard_check(vk_down)
	{
		y = y + 2;
	}
	}