//
//  GlobalHelper.swift
//  NetflixClone
//
//  Created by Galera, Javier on 08/01/2021.
//

import Foundation

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 1,
                          defaultEpisodeInfo: exampleEpisode1, creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6, exampleMovie7])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA", numberOfSeason: 2,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          promotionalHeadling: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Community", thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 3,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 4,
                          defaultEpisodeInfo: exampleEpisode1,
                          creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [],
                          promotionalHeadling: "New episodes coming soon")
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
                          moreLikeThisMovies: [])
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
                          promotionalHeadling: "Watch Season 6 Now")

let exampleMovie7 = Movie(id: UUID().uuidString,
                          name: "DARK", thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020, rating: "TV-MA",
                          numberOfSeason: 1,
                          defaultEpisodeInfo: exampleEpisode1, creator: "Baran bo Odan, Jantje Friese",
                          cast: "Louis Hofman, Oliver Masucci, Jordis Triebel",
                          moreLikeThisMovies: [])

let exampleEpisode1 = CurrentEpisodeInfo(episodeName: "First Episode", description: "In the aftermath of a child's disappearance, Dark follows characters from the fictional German town of Winden as they pursue the truth. They follow connections between four estranged families to unravel a sinister time travel conspiracy which spans several generations.", season: 1, episode: 1)

var exampleMovies: [Movie] {
    return [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6].shuffled()
}
