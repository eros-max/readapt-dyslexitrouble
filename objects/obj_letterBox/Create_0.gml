randomise();
letter = irandom(1); //define a letra aleatóriamente
letters = ["A", "B"/*, "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"*/];
letterValue = letters[letter];
a = "spr_letter" + letters[letter];
image_index = 0;
image_speed = 0;

/*
switch(letter){
	case 0:
		sprite_index = spr_letterA;
		letterValue = "A";
		break;
	case 1:
		sprite_index = spr_letterB;
		letterValue = "B";
		break;
}
*/

seguindo = false;
velocidade = 6;