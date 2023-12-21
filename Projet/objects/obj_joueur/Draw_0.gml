//Le champ texte de l'api
draw_set_colour(c_black);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_ext(200, 600, afficher_texte, -1, 1100);


// Le champ texte du joueur
draw_set_halign(fa_left);

if (text_input_active) {
    draw_set_colour(c_black);
    draw_text(text_input_x + 500, text_input_y + 500, keyboard_string + "_");
}

//Dessiner le joueur
draw_self();