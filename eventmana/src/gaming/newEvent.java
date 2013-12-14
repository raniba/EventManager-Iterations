package gaming;

import java.util.Date;

import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;

@PersistenceCapable
public class newEvent {
	@Persistent
	public String name;//event name
	@Persistent
	public int tries; //how many times event was edited
	@Persistent
	public String hosterID;//ID of event creator
	@Persistent
	public float time;//date time
	@Persistent
	private boolean PrivateOrpublic;//the event is public(true),till the creator change it to private
	@Persistent
	private String invitation;//the invitation card link will be saves here
	@Persistent
	private String location;//the location of the event
	
	
	public newEvent()//constructor
	{
		this.name="";
		this.tries=0;
		this.hosterID="";
		this.time=(float) 0.0;
		this.PrivateOrpublic=true;//public
		this.invitation="";
		this.location="";
		
	}

}
