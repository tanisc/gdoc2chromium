from sys import argv
from os import system
file = argv[1]
f = open(file,'r')
string = f.read()
f.close()

string = string.replace('"','').replace('{','').replace('}','').split(',')
print string
for s in string:
    if s.split(':')[0] == 'url':
        break
    else:
        continue

system('chromium-browser ' + s.replace('url: ',''))
