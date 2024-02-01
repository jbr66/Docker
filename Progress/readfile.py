
import os
import re

file = 'test2'

with open(file, 'r') as fh:
    content = fh.read()

data = []
for line in content.split('\n'):
    if not re.search('^#', line) and not re.search('^$', line):
        data.append(line)

layout = data[0].split(',')
nr_of_fields = len(layout)
print('Nr of fields: ' + str(nr_of_fields))
i = 1
newdata = []
while (i < len(data)):
    record = data[i].split(',')
    if len(record) == nr_of_fields:
        #print(record)
        f = 0;
        newrec = []
        while f < len(record):
            if layout[f] == 'v':
                x = '"{}"'.format(record[f])
                #print('"{}",'.format(record[f]))
            else:
                x = '{}'.format(record[f])
                #print('{},'.format(record[f]))
            newrec.append(x)
            f += 1
    else:
        print('ERROR in line: ', + record)
    i += 1
    newdata.append(newrec)

print(newdata)
for i in newdata:
    print(i)
