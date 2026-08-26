randomise();
letter = irandom(25); //define a letra aleatóriamente
letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
letterValue = letters[letter];

image_index = 0;
image_speed = 0;

switch(letter){
	case 0:
		sprite_index = spr_letterA;
		break;
	case 1:
		sprite_index = spr_letterB;
		break;
	case 2:
		sprite_index = spr_letter;
		break;
	case 3:
		sprite_index = spr_letter;
		break;
	case 4:
		sprite_index = spr_letter;
		break;
	case 5:
		sprite_index = spr_letter;
		break;
	case 6:
		sprite_index = spr_letter;
		break;
	case 7:
		sprite_index = spr_letter;
		break;
	case 8:
		sprite_index = spr_letter;
		break;
	case 9:
		sprite_index = spr_letter;
		break;
	case 10:
		sprite_index = spr_letter;
		break;
	case 11:
		sprite_index = spr_letter;
		break;
	case 12:
		sprite_index = spr_letter;
		break;
	case 13:
		sprite_index = spr_letter;
		break;
	case 14:
		sprite_index = spr_letter;
		break;
	case 15:
		sprite_index = spr_letter;
		break;
	case 16:
		sprite_index = spr_letter;
		break;
	case 17:
		sprite_index = spr_letter;
		break;
	case 18:
		sprite_index = spr_letter;
		break;
	case 19:
		sprite_index = spr_letter;
		break;
	case 20:
		sprite_index = spr_letter;
		break;
	case 21:
		sprite_index = spr_letter;
		break;
	case 22:
		sprite_index = spr_letter;
		break;
	case 23:
		sprite_index = spr_letter;
		break;
	case 24:
		sprite_index = spr_letter;
		break;
	case 25:
		sprite_index = spr_letter;
		break;
	default:
}

inHands = false;
velocidade = 6;