# Thu Jan 27 22:17:55 UTC 2022
# Clark Fitzgerald

# Make some tiny versions of the GDELT events table for examples.

TINY="tiny_events.tsv"

# Start with a header, because original data doesn't have a header, unfortunately.
echo -e "GLOBALEVENTID\tYEAR\tActor1Name\tEventCode\tNumArticles\tSOURCEURL" > ${TINY}

# Append 20 rows of data for the corresponding columns.
head -n 20 /examples/first100events.txt | cut -f 1,4,7,27,34,61 >> ${TINY}

# Translate tab characters to commas to get an actual CSV file.
cat ${TINY} | tr "\t" "," > tiny_events.csv
