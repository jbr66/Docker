import jaydebeapi
import socket

hostname = socket.gethostname()

def connoe (
        host,
        service,
        db,
        dlc,
        username,
        password):

    driverstring = "com.ddtek.jdbc.openedge.OpenEdgeDriver"
    #driverstring = cfg['oe']['driverstring']
    connstring   = "jdbc:datadirect:openedge://%s:%s;DatabaseName=%s"%(host,service,db)
    dlcstring = dlc + "/java/openedge.jar"
    credentials = []
    credentials.append(username)
    credentials.append(password)
    print('Connecting to OE using %s' % connstring)
    conn = jaydebeapi.connect(driverstring,connstring,credentials,dlcstring)
    #print(conn)

    return conn

# Try to retrieve data
myconn = connoe('localhost',8000,'demo','/qond/apps/dlc','proadmin','proadmin')
curs = myconn.cursor()
curs.execute('select name,city from PUB.CUSTOMER')

data = curs.fetchall()
for i in data:
    print(i)
curs.close()
myconn.close()
