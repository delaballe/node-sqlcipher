# NAME

node-sqlicipher - Asynchronous, non-blocking [SQLcipher](http://sqlcipher.net//) bindings for [Node.js](http://nodejs.org/) 0.2-0.4 (versions 2.0.x), **0.6.13+, 0.8.x, and 0.10.x** (versions 2.1.x). it's a fork of [node-sqlite3](https://github.com/mapbox/node-sqlite3) with sqlcipher library 


# USAGE

``` js
var sqlite3 = require('sqlcipher').verbose();
var db = new sqlite3.Database('test.db', 'password');

db.serialize(function() {
  db.run("CREATE TABLE lorem (info TEXT)");

  var stmt = db.prepare("INSERT INTO lorem VALUES (?)");
  for (var i = 0; i < 10; i++) {
      stmt.run("Ipsum " + i);
  }
  stmt.finalize();

  db.each("SELECT rowid AS id, info FROM lorem", function(err, row) {
      console.log(row.id + ": " + row.info);
  });
});

db.close();
```

This is in early stage
----------------------
Currently not working !! 
-----------------------
But Coming soon 
---------------
