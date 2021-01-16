//
//  GlobalHelper.swift
//  NetflixClone
//
//  Created by Galera, Javier on 08/01/2021.
//

import Foundation

let exampleVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2 = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3 = URL(string: "https://picsum.photos/300/106")!

var randomExampleURL: URL {
    return [exampleImageURL,exampleImageURL2,exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleURL)
let exampleTrailer2 = Trailer(name: "The Hero´s Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleURL)
let exampleTrailers = [exampleTrailer1,exampleTrailer2,exampleTrailer3].shuffled()

let episode1 = Episode(name: "Beginnings and Endings",
                       season: 1,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/109",
                       description: "Six months after the disappearences, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 49,
                       videoURL: exampleVideoURL)

let episode2 = Episode(name: "Dark Matter",
                       season: 1,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/110",
                       description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits and old nemesis.",
                       length: 49,
                       videoURL: exampleVideoURL)

let episode3 = Episode(name: "Ghosts",
                       season: 1,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/111",
                       description: "In 1954, a missing Helge returns, but he´ll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 49,
                       videoURL: exampleVideoURL)

let episode4 = Episode(name: "Beginnings and Endings",
                       season: 2,
                       episodeNumber: 1,
                       thumbnailImageURLString: "https://picsum.photos/300/112",
                       description: "Six months after the disappearences, the police form a task force. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
                       length: 49,
                       videoURL: exampleVideoURL)

let episode5 = Episode(name: "Dark Matter",
                       season: 2,
                       episodeNumber: 2,
                       thumbnailImageURLString: "https://picsum.photos/300/113",
                       description: "Clausen and Charlotte interview Regina. The Stranger takes Hannah to 1987, where Claudia has an unnerving encounter and Egon visits and old nemesis.",
                       length: 49,
                       videoURL: exampleVideoURL)

let episode6 = Episode(name: "Ghosts",
                       season: 2,
                       episodeNumber: 3,
                       thumbnailImageURLString: "https://picsum.photos/300/114",
                       description: "In 1954, a missing Helge returns, but he´ll only speak to Noah. In 1987, Claudia brings the time machine to Tannhaus, and Egon questions Ulrich again.",
                       length: 49,
                       videoURL: exampleVideoURL)

var exampleEpisodes: [Episode] = [episode1, episode2, episode3, episode4, episode5, episode6 ].shuffled()

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 1,
                          defaultEpisodeInfo: exampleEpisode1, creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7],
                          episodes: exampleEpisodes,
                          trailers: exampleTrailers)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA", numberOfSeason: 2,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          episodes: exampleEpisodes,
                          promotionalHeadling: "Best Rated Show",
                          trailers: exampleTrailers)
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 3,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          episodes: exampleEpisodes,
                          trailers: exampleTrailers)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 4,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          episodes: exampleEpisodes,
                          promotionalHeadling: "New episodes coming soon",
                          trailers: exampleTrailers)
let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeason: 5,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          episodes: exampleEpisodes,
                          trailers: exampleTrailers)
let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeason: 6,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          episodes: exampleEpisodes,
                          promotionalHeadling: "Watch Season 6 Now",
                          trailers: exampleTrailers)

let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 1,
                          defaultEpisodeInfo: exampleEpisode1, creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          episodes: exampleEpisodes,
                          trailers: exampleTrailers)

let exampleEpisode1 = CurrentEpisodeInfo(episodeName: "First Episode", description: "In the aftermath of a child's disappearance, Dark follows characters from the fictional German town of Winden as they pursue the truth. They follow connections between four estranged families to unravel a sinister time travel conspiracy which spans several generations.", season: 1, episode: 1)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}
