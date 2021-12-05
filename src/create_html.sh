#! /bin/sh
awk '
BEGIN{
    print "<!DOCTYPE html>\n<html>\n<style>\ntable {\nfont-family: arial, sans-serif;\nborder-collapse: collapse;\nwidth: 100%;\n}\ntd, th {\nborder: 1px solid #dddddd;\ntext-align: center;\npadding: 30px;\n}\ntr:nth-child(even) {\nbackground-color: #dddddd;\n}\n</style>\n<body>\n<table><tr><th>File Name</th><th>MD5</th><th>SHA1</th><th>SHA256</th></tr>"
    }
    {print "<tr>"
    for(i=1;i<=NF;i++)
        print "<td>" $i"</td>"
    print "</tr>"
    }
END{
    print "\n</table>\n</Body>\n</html>"
    } ' /www/md5sum_results.txt >> /www/index2.html