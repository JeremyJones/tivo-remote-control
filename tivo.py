import telnetlib

prdLogBox='192.168.1.123'

tn = telnetlib.Telnet()
tn.open(prdLogBox, port=31339)
tn.write("IRCODE PAUSE\n")
tn.close()
