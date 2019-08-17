function connexion(u, p){
    var username = u;
    var password = p;
    var TheLists = ["GOD:HIDDEN"];
    for (i = 0; i < TheLists.length; i++)
    {
        if (TheLists[i].indexOf(username) == 0)
        {
            var TheSplit = TheLists[i].split(":");
            var TheUsername = TheSplit[0];
            var ThePassword = TheSplit[1];
            if (username == TheUsername && password == ThePassword)
            {
              console.log(username, password)
            }
        }
        else
        {
          console.log('lol');
        }
    }
}

connexion("GOD", "HIDDEN")
