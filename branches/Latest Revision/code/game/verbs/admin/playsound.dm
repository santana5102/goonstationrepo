/client/proc/play_sound(S as sound)
	set category = "Admin-Game"
	set name = "play sound"

	//if(Debug2)
	if(!src.authenticated || !src.holder)
		src << "Only administrators may use this command."
		return

	if(usr.client.canplaysound)
		usr.client.canplaysound = 0
		world.log_admin("[src] played sound [S]")
		messageadmins("[src] played sound [S]")
		world << sound(S,0,1,1)
//	else
//		usr << "Cant play Sound."


	//else
	//	alert("Debugging is disabled")
	//	return