
# time
time ls

# ls
# Which files are in the stat196k-data-examples bucket?
time aws s3 ls --no-sign-request s3://stat196k-data-examples

# How long does it take to stream the whole data set in?
# We discard it by writing to /dev/null
time aws s3 cp --no-sign-request s3://stat196k-data-examples/2018.csv.gz - > /dev/null


# The data is 4150844161 bytes

# real    3m37.473s
# user    0m23.697s
# sys     0m16.867s

# basic calculator
# bc
# 4150844161 / (3*60 + 37) / 2^20
# 18
# Throughput is 18 MB/sec

# 123 GO:
# Suppose you pipe the data through a subsequent pipeline
# aws s3 cp {$S3URL} - | more | steps
#
# Can any pipeline process all the data in S3 faster than around 3:30?

# How many lines / rows / records are in this file?
time aws s3 cp --no-sign-request s3://stat196k-data-examples/2018.csv.gz - | gunzip | wc -l

# 61544481 / 10^6
# 61

# 61 million
