var mysql = require('mysql');

// create connection to db
var conn = mysql.createConnection({
	host: "localhost",
	user: "tranchiendang",
	password: "tranchiendang",
	database: "real_estate"
});

conn.connect(function(err){
	  if(err){
	    console.log('Error connecting to Db');
	    return;
	  }
	  console.log('Connection established');
	});

	conn.end(function(err) {
	  // The connection is terminated gracefully
	  // Ensures all previously enqueued queries are still
	  // before sending a COM_QUIT packet to the MySQL server.
});