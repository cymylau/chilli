Chilli 
-------
Container Hosting Infrastructre Lightweight Load Indicators  
===========================================================

What does it do?
--
Copies files from the directory filestohash into a webserver and provides hashes of those files. 

How does it work?
--
Using a multi stage build, the files are hashed in the first image, then copied into the running webserver complete with a basic (very basic) webpage that lists the file hashes. 

Why?
--
Various container security tooling often need IOC (indicators of compromise such as a File Hash or Path) to either allow, block, or ignore. This allows us to seed a custom image where we can locally reveal the hashes, before added to infrastructure to safely test IOC handling.

How to use
--
Clone the repo, copies files of your choice into filestohash folder.

When ready, run "docker build -t chilli:dev -f dockerfile ." to build chilli:dev image. 

Run locally with "docker run -d -p 8081:80 chilli:dev" and browse to http://localhost:8081 to see your files hashes. 

Update your security tools with the filehashes, then upload the image "chilli:dev" to test those controls! 

