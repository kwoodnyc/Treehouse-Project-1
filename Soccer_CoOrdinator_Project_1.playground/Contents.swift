

// Soccer CoOrdinator Project 1 Treehouse Tech Degree

// Individual Player Dictionaries

let player1: [String: Any] = ["name": "Joe Smith", "height": 42.0, "experience": true, "guardians": "Jim and Jan Smith"]

let player2: [String: Any] = ["name": "Jill Tanner", "height": 36.0, "experience": true, "guardians": "Clara Tanner"]

let player3: [String: Any] = ["name": "Bill Bon", "height": 43.0, "experience": true, "guardians": "Sara and Jenny Bon"]

let player4: [String: Any] = ["name": "Eva Gordon", "height": 45.0, "experience": false, "guardians": "Wendy and Mike Gordon"]

let player5: [String: Any] = ["name": "Matt Gill", "height": 40.0, "experience": false, "guardians": "Charles and Sylvia Gill"]

let player6: [String: Any] = ["name": "Kimmy Stein", "height": 41.0, "experience": false, "guardians": "Bill and Hillary Stein"]

let player7: [String: Any] = ["name": "Sammy Adams", "height": 45.0, "experience": false, "guardians": "Jeff Adams"]

let player8: [String: Any] = ["name": "Karl Saygan", "height": 42.0, "experience": true, "guardians": "Heather Bledsoe"]

let player9: [String: Any] = ["name": "Suzane Greenberg", "height": 44.0, "experience": true, "guardians": "Henrietta Dumas"]

let player10: [String: Any] = ["name": "Sal Dali", "height": 41.0, "experience": false, "guardians": "Gala Dali"]

let player11: [String: Any] = ["name": "Joe Kavalier", "height": 39.0, "experience": false, "guardians": "Sam and Elaine Kavalier"]

let player12: [String: Any] = ["name": "Ben Finklestein", "height": 44.0, "experience": false, "guardians": "Aaron and Jill Finklestein"]

let player13: [String: Any] = ["name": "Diego Soto", "height": 41.0, "experience": true, "guardians": "Robin and Sarika Soto"]

let player14: [String: Any] = ["name": "Chloe Alaska", "height": 47.0, "experience": false, "guardians": "David and Jamie Alaska"]

let player15: [String: Any] = ["name": "Arnold Willis", "height": 43.0, "experience": false, "guardians": "Claire Willis"]

let player16: [String: Any] = ["name": "Phillip Helm", "height": 44.0, "experience": true, "guardians": "Thomas Helm and Eva Jones"]

let player17: [String: Any] = ["name": "Les Clay", "height": 42.0, "experience": true, "guardians": "Wynonna Brown"]

let player18: [String: Any] = ["name": "Herschel Krustofski", "height": 45.0, "experience": true, "guardians": "Hyman and Rachel Krustofski"]

// Empty Dictionaries for Experience Groups, Teams, and League

var experiencedPlayers: [[String: Any]] = []

var inexperiencedPlayers: [[String: Any]] = []

var teamDragons: [[String: Any]] = []

var teamSharks: [[String: Any]] = []

var teamRaptors: [[String: Any]] = []

var theLeague: [[String: Any]] = []

// Dictionary for all Players

let players = [player1, player2, player3, player4, player5, player6, player7, player8, player9, player10, player11, player12, player13, player14, player15, player16, player17, player18]

// Logic Loop to Sort Players into Experienced and Not-Experienced Groups

for player in players {
    guard let isExperienced = player["experience"] as? Bool else { break }
    
    switch isExperienced {
    case true: experiencedPlayers.append(player)
    case false: inexperiencedPlayers.append(player)
    }
}

var teams = [teamDragons, teamSharks, teamRaptors]

// Find Player Count for Average Team
let averageTeamsPlayerCount = players.count / teams.count
let experiencedPlayersCount = experiencedPlayers.count / teams.count

//Logic Loop to Sort Players into Teams
for experiencedPlayer in experiencedPlayers {
    if teamDragons.count < experiencedPlayersCount {
        teamDragons.append(experiencedPlayer)
    } else if teamSharks.count < experiencedPlayersCount {
        teamSharks.append(experiencedPlayer)
    } else if teamRaptors.count < experiencedPlayersCount {
        teamRaptors.append(experiencedPlayer)
    }
}

for inexperiencedPlayer in inexperiencedPlayers {
    if teamDragons.count < averageTeamsPlayerCount {
        teamDragons.append(inexperiencedPlayer)
    } else if teamSharks.count < averageTeamsPlayerCount {
        teamSharks.append(inexperiencedPlayer)
    } else if teamRaptors.count < averageTeamsPlayerCount {
        teamRaptors.append(inexperiencedPlayer)
    }
}

// Print Letters to Player's Parents


for dragonsPlayer in teamDragons {
    print("Dear \(dragonsPlayer["guardians"] as! String),\n\(dragonsPlayer["name"] as! String) was selected to play for the Dragons. We would like to welcome our new star at the first team practice on March 17, at 1 pm.\nDennis Parussini,\nHead Coach.")
}

for sharksPlayer in teamSharks {
    print("Dear \(sharksPlayer["guardians"] as! String),\n\(sharksPlayer["name"] as! String) was selected to play for the Sharks. We would like to welcome our new star at the first team practice on March 17, at 3 pm.\nDennis Parussini,\nHead Coach.")
}

for raptorsPlayer in teamRaptors {
    print("Dear \(raptorsPlayer["guardians"] as! String),\n\(raptorsPlayer["name"] as! String) was selected to play for the Raptors. We would like to welcome our new star at the first team practice on March 18, at 1 pm.\nDennis Parussini,\nHead Coach.")
}








