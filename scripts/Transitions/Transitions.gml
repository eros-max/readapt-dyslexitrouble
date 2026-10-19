global.midTransition = false;
global.roomTarget = -1;


function transitionPlaceSequence(type){
	if (layer_exists("transition")) layer_destroy("transition");
	var lay = layer_create(-9999, "transition");
	layer_sequence_create(lay,0,0,type);
}

function transitionStart(roomTarget, typeOut, typeIn)
{
	if (!global.midTransition)
	{
		global.midTransition = true;
		global.roomTarget = roomTarget;
		transitionPlaceSequence(typeOut);
		layer_set_target_room(roomTarget);
		transitionPlaceSequence(typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function transitionChangeRoom(){
	room_goto(global.roomTarget);
}

function transitionFinished(){
	global.midTransition = false;
}