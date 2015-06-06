package com.example.daniel.gtcalerts;

import android.app.Activity;
import android.os.Bundle;
import android.widget.ArrayAdapter;
import android.widget.ListView;


/**
 * Created by daniel on 6/6/15.
 */
public class VolunteerActivity extends Activity {
    private ListView mainListView ;
    private ArrayAdapter<String> listAdapter ;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_volunteer);

        PopulateList();
    }



    private void PopulateList(){

        mainListView = (ListView) findViewById( R.id.mainListView );


        //ArrayList<String> planetList = new ArrayList<String>();
       // planetList.addAll( Arrays.asList(planets) );

        // Create ArrayAdapter using the planet list.
        listAdapter = new ArrayAdapter<String>(this, R.layout.simplerow);

        //foreach

        // Add more planets. If you passed a String[] instead of a List<String>
        // into the ArrayAdapter constructor, you must not add more items.
        // Otherwise an exception will occur.
        listAdapter.add( "ABC Event 1" );
        listAdapter.add( "ABC Event 2" );
        listAdapter.add( "ABC Event 3" );
        listAdapter.add( "ABC Event 4" );
        listAdapter.add( "ABC Event 5" );
/*
        listAdapter.setOnItemClickListener(new OnItemClickListener() {



            public void onItemClick(AdapterView<?> arg0, View arg1, int arg2,
                                    long arg3) {
                Log.v("clicked", (String) ((TextView) arg1).getText());
            }

        });
        */

        // Set the ArrayAdapter as the ListView's adapter.
        mainListView.setAdapter( listAdapter );
    }






}
