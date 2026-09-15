randomise();
letter = irandom(25); //define a letra aleatóriamente
letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"];
letterValue = letters[letter];
inHands = false;

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
		sprite_index = spr_letterC;
		break;
	case 3:
		sprite_index = spr_letterD;
		break;
	case 4:
		sprite_index = spr_letterE;
		break;
	case 5:
		sprite_index = spr_letterF;
		break;
	case 6:
		sprite_index = spr_letterG;
		break;
	case 7:
		sprite_index = spr_letterH;
		break;
	case 8:
		sprite_index = spr_letterI;
		break;
	case 9:
		sprite_index = spr_letterJ;
		break;
	case 10:
		sprite_index = spr_letterK;
		break;
	case 11:
		sprite_index = spr_letterL;
		break;
	case 12:
		sprite_index = spr_letterM;
		break;
	case 13:
		sprite_index = spr_letterN;
		break;
	case 14:
		sprite_index = spr_letterO;
		break;
	case 15:
		sprite_index = spr_letterP;
		break;
	case 16:
		sprite_index = spr_letterQ;
		break;
	case 17:
		sprite_index = spr_letterR;
		break;
	case 18:
		sprite_index = spr_letterS;
		break;
	case 19:
		sprite_index = spr_letterT;
		break;
	case 20:
		sprite_index = spr_letterU;
		break;
	case 21:
		sprite_index = spr_letterV;
		break;
	case 22:
		sprite_index = spr_letterW;
		break;
	case 23:
		sprite_index = spr_letterX;
		break;
	case 24:
		sprite_index = spr_letterY;
		break;
	case 25:
		sprite_index = spr_letterZ;
		break;
	default:
}