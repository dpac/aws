import os
import sys
import gzip
elb_status=sys.argv[1]
for filename in os.listdir(sys.argv[2]):
    with open(filename) as f:
        if filename.endswith(".gz"):
            f = gzip.GzipFile(filename,"rb")
            for line in f:
		if line.split()[8]==elb_status:
            	   print line
