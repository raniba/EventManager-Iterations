package dbManager;
import java.util.List;

import gaming.newEvent;

import javax.jdo.PersistenceManager;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
public final class DataBaseManager
 {
    DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
    PersistenceManager pm = PMF.get().getPersistenceManager();
    private DataBaseManager() {}
    private static DataBaseManager instance = null;
    public static DataBaseManager getInstance()
    {
        if (instance == null)
            instance = new DataBaseManager();
        return instance;
    }
    
    
    public void insertNewScore(newEvent s) //add new event, if event exists don't add
    {
    	List<newEvent> q=getAllEvents();
    	for (newEvent item : q)
		{
    		if(item.hosterID==s.hosterID && item.name==s.name)
    			return;
		}
    	pm.makePersistent(s);
    }
    //public List<newEvent> getScoreForPlayer(String name)
    public List<newEvent> getEvent(String name)
    {
    	System.out.println("getting the event " + name);
    	javax.jdo.Query q = pm.newQuery(newEvent.class);
    	q.setFilter("hosterID==theName");
    	q.declareParameters("String theName");
    	return (List<newEvent>)q.execute(name);
    }
    
    public List<newEvent> getEventinfo(String name,String Hoster)//get event of a specific event for user
    {
    	javax.jdo.Query q = pm.newQuery(newEvent.class, ":p.contains(Hoster)");
    	q=(javax.jdo.Query)q.execute(name);
    	q.setFilter("name== name");
    	return (List<newEvent>)q.execute(name);
    }
    
    public List<newEvent> getAllEvents()
    {
    	javax.jdo.Query q = pm.newQuery(newEvent.class);
    	return (List<newEvent>)q.execute();
    }

}
