Chilli 
-------

What does it do?
To generate a docker image that can be (resonably) safely loaded into production container hosts for testing of security controls. 

How does it work?
Put non malicous files into filestohash directory and build the image. 

Why is this needed?
Various security tooling often need IOC (indicators of compromise such as a File Hash or Path) to either allow, block, or ignore.  

To allow 
