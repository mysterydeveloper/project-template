// This query creates nodes representing all 11 PARTIES in Ireland.
// With name, Leader,translation,Founded,InauguralLeader,Ideology,Position,IO(International organisation) EPGROUP AS PROPERTIES

CREATE (:PARTY {name:"Fine Gael",Leader:"Enda Kenny",translation:"Clan of the Gaels",Founded:"1933",InauguralLeader:" Eoin O'Duffy",Ideology:"",Position:"Centre-right",IO:"Centrist Democrat International",EPGroup:"EPP",party: "FG"}),
(:PARTY {name:"Labour Party",Leader:"Joan Burton",translation:"Páirtí an Lucht Oibre",Founded:"1912",InauguralLeader:"James Connolly James Larkin William X. O'Brien",Ideology:"",Position:"Centre-left",IO:"Socialist International",EPGroup:"S&D",party: "Lab"}),
(:PARTY {name:"Fianna Fáil",Leader:"Micheál Martin",translation:"Soldiers of Destiny",Founded:"1926",InauguralLeader:" Éamon de Valera",Ideology:"",Position:"Centre-right",IO:"Liberal International",EPGroup:"ALDE", party: "FF"}),
(:PARTY {name:"Sinn Féin",Leader:"Gerry Adams",translation:"We Ourselves",Founded:"1905 / 1970",InauguralLeader:" Arthur Griffith",Ideology:"",Position:"Left-wing",IO:"none",EPGroup:"GUE/NGL",party: "SF"}),
(:PARTY {name:"Anti-Austerity Alliance–People Before Profit",Leader:"none",translation:"Chomhghuaillíocht in Aghaidh na Déine-Daoine Roimh Brabús",Founded:"2015",InauguralLeader:" none",Ideology:"",Position:"Far-Left",IO:"(Factions): International Socialist Tendency and Committee For a Workers' International",EPGroup:"GUE/NGL",party: "AAA"}),
(:PARTY {name:"Renua Ireland",Leader:"Lucinda Creighton",translation:"Dervived from Ré Nua meaning New Era",Founded:"2015",InauguralLeader:" Lucinda Creighton",Ideology:"",Position:"Right-wing",IO:"none",EPGroup:"none",party: "R"}),
(:PARTY {name:"Social Democrats",Leader:"Stephen Donnelly Catherine Murphy Róisín Shortall",translation:"Na Daonlathaigh Shóisialta",Founded:"2015",InauguralLeader:" Stephen Donnelly Catherine Murphy Róisín Shortall",Ideology:"",Position:"Centre-left",IO:"none",EPGroup:"none",party: "SD"}),
(:PARTY {name:"Green Party",Leader:"Eamon Ryan",translation:"Comhaontas Glas",Founded:"1981",InauguralLeader:" none",Ideology:"",Position:"Centre-left",IO:"Global Greens",EPGroup:"Greens/EFA", party: "GP"}),
(:PARTY {name:"Workers' Party",Leader:"Michael Donnelly",translation:"Páirtí na nOibrithe",Founded:"1970",InauguralLeader:" Tomás Mac Giolla",Ideology:"",Position:"Far-left",IO:"Communist and Workers' Parties",EPGroup:"none", party: "WP"}),
(:PARTY {name:"Independents",Leader:"None",Ideology:"",Position:"Independent", party: "Ind"}),
(:PARTY {name:"Independent Alliance",Leader:"None",Ideology:"",Position:"Independents", party: "IA"}),PBPA
(:PARTY {name:"Misc",party: "Misc"});