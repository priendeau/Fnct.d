BEGIN{
	stream="";
	if( Vplayer == "" )
	{
		Vplayer="mplayer" ;
	}
	if( Voption == "" )
	{
		Voption="-ao alsa -cache 3072" ;
	}
	if( VKillPrio == "" )
	{
		VKillPrio="-9" ;
	}
}
{
	system(sprintf("kill %s %s",VKillPrio,$1)); 
	stream=$(NF); 
}
END{ 
	system( sprintf("%s %s %s",Vplayer,Voption,stream) ) ; 
}
