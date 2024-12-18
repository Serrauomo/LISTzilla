//
//  Movie.swift
//  Kaijuued
//
//  Created by Davide Serrano on 10/12/24.
//

import Foundation

// MARK: - ENUM MOVIE ERAS -
enum MovieEra: String, CaseIterable {
    case showa = "Showa Era(1954-1975)"
    case heisei = "Heisei Era(1984-1995)"
    case millennium = "Millennium Era(1999-2004)"
    case reiwa = "Reiwa Era(2016-Now)"
// ORDER TO MAKE APPEAR MOVIE IN SEARCH
    var order: Int {
        switch self {
        case .showa: return 1
        case .heisei: return 2
        case .millennium: return 3
        case .reiwa: return 4
        }
    }
    
//MARK: - ACCESSABILITY VOICEOVER -
    var accessibilityLabel: String {
        switch self {
        case .showa:
            "Showa Era (from 1954 to 1975)"
        case .heisei:
            "Heisei Era (from 1984 to 1995)"
        case .millennium:
            "Millennium Era (from 1999 to 2004)"
        case .reiwa:
            "Reiwa Era (from 2016 to NOW)"
        }
    }
}

// MARK: - MOVIE STRUCTURES -
struct Movie: Identifiable, Equatable {
    var id = UUID()
    var title: String
    var originaltitle: String
    var description: String
    var poster: String
    var monsterDesigner: String
    var Director: String
    var year: Int
    var era: MovieEra
    var monsterender: String
}

// MARK: - MOVIE DETAILS -
let kaijuMovies = [
    Movie(title: "Godzilla", originaltitle: "ゴジラ (Gojira)", description: "Godzilla (1954), directed by Ishirō Honda, is the original film in the Godzilla franchise and a landmark in Japanese cinema. The film introduces Godzilla, a giant, prehistoric creature awakened and mutated by nuclear testing in the Pacific Ocean. It serves as both a monster movie and a powerful allegory for the horrors of nuclear warfare.", poster: "Godzilla1954", monsterDesigner: " Monster(s) Design: Akira Watanabe", Director: "Director(s): Ishiro Honda", year: 1954, era: .showa, monsterender: "godzilla54pop_up"),
    Movie(title: "Godzilla Raids Again", originaltitle: "ゴジラの逆襲 (Gojira no Gyakushū, lit. Godzilla's Counterattack)", description: "Godzilla Raids Again(1955), also known as,Godzilla's Counterattack in some markets, is the second film in the Godzilla franchise and the first sequel to the original 1954 Godzilla film. Directed by Motoyoshi Oda and produced by Toho Studios, this film continues the story of the giant monster, but it marks a shift toward a more action-oriented and less somber tone compared to its predecessor. While the film doesn't carry the same deep anti-nuclear message as the original, it introduces new concepts that would shape the Godzilla franchise in the years to come", poster: "Godzilla Raids Again", monsterDesigner: "Monster(s) Design: Teizo Toshimitsu", Director: "Director(s): Motoyoshi Oda", year: 1955, era: .showa, monsterender: "godzilla_showa_pop_up"),
    Movie(title: "Ghidorah, The Three-headed monsters", originaltitle: "三大怪獣 地球最大の決戦 (San Daikaijū Chikyū Saidai no Kessen, lit. Three Giant Monsters: Earth's Greatest Battle)", description: "Ghidorah, the Three-Headed Monster (1964) is the fifth film in the Godzilla series and a landmark entry in the Godzilla franchise. Directed by Ishirō Honda and produced by Toho Studios, it is one of the most important films in the kaiju genre, as it introduces King Ghidorah, one of Godzilla's most iconic and powerful adversaries. This movie also marks the shift in the series towards a more fantasy-driven, action-oriented style with the introduction of other popular kaiju such as Mothra and Rodan.", poster: "Ghidorah, The Three-headed Monster", monsterDesigner:"Monster(s) Design: Takeo Kita", Director: "Director(s): Ishiro Honda", year: 1962, era: .showa, monsterender: "godzilla_showa_pop_up"),
    Movie(title: "Godzilla 1985", originaltitle: "ゴジラ (Gojira, lit. Godzilla)", description: "Godzilla 1985 is a 1984 Japanese film that served as a reboot of the Godzilla series, marking the return of the iconic kaiju after a nine-year hiatus. Directed by Koji Hashimoto and produced by Toho Studios, Godzilla 1985 was an attempt to bring the franchise back to its roots, focusing on Godzilla's destructive nature and exploring the darker, more serious themes of nuclear threat, which were central to the original 1954 film.The movie was also released in the United States in 1985 under the title Godzilla 1985, featuring additional scenes with American actors and a new storyline that aimed to appeal to Western audiences. This version, however, was significantly altered and had a different tone than the original Japanese version." ,poster: "Godzilla1985", monsterDesigner:"Monster(s) Design: Akira Sakuragi", Director: "Director(s): Koji Hashimoto", year: 1984, era: .heisei, monsterender: "godzilla_heisei_pop_up"),
    Movie(title: "Godzilla vs Biollante", originaltitle: "ゴジラVSビオランテ (Gojira tai Biorante)", description: "Godzilla vs. Biollante (1989) is the 17th film in the Godzilla franchise and is the third installment in the Heisei Era of Godzilla films, following the reboot established with Godzilla 1985 (also known as The Return of Godzilla). Directed by Kazuki Ōmori and produced by Toho Studios, Godzilla vs. Biollante is known for introducing a unique and original monster — Biollante, a hybrid kaiju born from a combination of Godzilla’s DNA, human DNA, and plant cells. This film represents a departure from the typical kaiju battles, as it delves into more complex themes, such as genetic engineering and ecological balance, while still providing the trademark monster action and destruction that the series is famous for. The film also continues the Heisei Era’s trend of exploring Godzilla’s connection to nuclear power and its consequences.", poster: "Godzilla vs Biollante", monsterDesigner: "Monster(s) Design: Shigekazu Ikuno", Director: "Director(s): Kazuki Omori", year: 1989, era: .heisei, monsterender: "godzilla_heisei_pop_up"),
    Movie(title: "Godzilla vs King Ghidorah", originaltitle:"ゴジラVSたいキングギドラ (Gojira tai Kingu Gidora)", description: "Godzilla vs. King Ghidorah (1991) is the 18th film in the Godzilla franchise and part of the Heisei series. Directed by Kazuki Omori, the movie is a blend of science fiction and kaiju action, featuring the return of Godzilla to combat his arch-nemesis, King Ghidorah.", poster: "Godzilla vs King Ghidorah", monsterDesigner: "Monster(s) Design: Tadashi Sakai", Director: "Director(s): Kazuki Omori", year: 1991, era: .heisei, monsterender: "godzilla_heisei_pop_up"),
    Movie(title: "Godzilla vs Space Godzilla", originaltitle: "ゴジラVSたいスペースゴジラ (Gojira tai Supēsugojira)", description: "Godzilla vs. SpaceGodzilla (1994) is the 20th film in the Godzilla franchise and the fourth installment in the Heisei series. Directed by Kensho Yamashita, the movie pits Godzilla against an all-new, powerful creature: SpaceGodzilla, a monstrous being created from Godzilla's own cells, combining both cosmic and earthly elements.", poster: "Godzilla vs Space Godzilla", monsterDesigner: "Monster(s) Design: Ken Sakai", Director: "Director(s): Kensho Yamashita",year: 1994, era: .heisei, monsterender: "godzilla_heisei_pop_up"),
    Movie(title: "Godzilla vs Destroyah", originaltitle: "ゴジラVSたいデストロイア (Gojira tai Desutoroia)", description: "Godzilla vs. Destoroyah (1995) is the 22nd film in the Godzilla franchise and the final installment of the Heisei series. Directed by Takao Okawara, this film is notable not only for its climactic battle between Godzilla and a new, terrifying monster, but also for serving as the emotional conclusion to the Heisei-era Godzilla saga. It marks the end of Godzilla’s journey in this timeline and features some of the most emotional and intense moments in the entire franchise.", poster: "Godzilla vs Destroyah", monsterDesigner: "Monster(s) Design: Yoshio Suzuki", Director: "Director(s): Takao Okawara", year: 1995, era: .heisei, monsterender: "burning_godzilla_pop_up"),
    Movie(title: "Shin Godzilla",originaltitle: "シン・ゴジラ (Shin Gojira)", description: "Shin Godzilla (2016), also known as Godzilla Resurgence, is a Japanese kaiju film directed by Hideaki Anno (best known for creating Neon Genesis Evangelion) and Shinji Higuchi. This film serves as a reboot of the Godzilla franchise, separate from the previous continuity, and represents a return to the roots of the original 1954 Godzilla film. Shin Godzilla presents a more serious, politically charged, and horrifying take on the iconic monster, reflecting contemporary anxieties around nuclear power, governmental bureaucracy, and natural disasters.", poster: "Shin Godzilla", monsterDesigner:"Monster(s) Design: Shinji Higuchi",Director: "Director(s): Hideaki Anno, Shinji Higuchi", year: 2016 , era: .reiwa, monsterender: "shingodzilla_pop_up"),
    Movie(title: "Godzilla -1.0", originaltitle: "ゴジラ-1.0マイナスワン (Gojira Mainasu Wan, lit. Godzilla-1.0)", description: "Godzilla -1.0 (or Godzilla Minus One) is an upcoming Japanese kaiju film scheduled for release in December 2023. Directed by Takashi Yamazaki and produced by Toho, this movie marks the return of Godzilla to Japanese cinema after a significant gap since Shin Godzilla (2016). It is part of a new Godzilla reboot that has intrigued fans with its fresh take on the iconic monster, offering a reimagined version of Godzilla that returns to its roots as a force of nature, while reflecting contemporary themes.",poster: "Godzilla Minus One", monsterDesigner: "Monster(s) Design: Takashi Yamazaki", Director: "Director(s): Takashi Yamazaki", year: 2023, era: .reiwa, monsterender: "godzilla_minus_one_pop_up" ),
    Movie(title: "Godzilla2000", originaltitle: "ゴジラ2000 ミレニアム (Gojira Nisen: Mireniamu)", description: "Godzilla 2000: Millennium (2000) is the 24th film in the Godzilla franchise and marks the beginning of the Millennium series, which followed the Heisei series and began a new continuity for the Godzilla films. Directed by Takao Okawara, Godzilla 2000 is a reboot of sorts, introducing a new version of Godzilla and a new set of monsters, while paying homage to the original 1954 Godzilla film and the franchise's long history." ,poster: "Godzilla2000", monsterDesigner: "Monster(s) Design: Takeshi Shimizu", Director: "Director(s): Takao Okawara", year: 1999, era: .millennium, monsterender: "godzilla_millennium_pop_up"),
    Movie(title: "Godzilla Against MechaGodzilla", originaltitle: "ゴジラ×たいメカゴジラ (Gojira tai Mekagojira)", description: "Godzilla Against Mechagodzilla (2002) is the 26th film in the Godzilla franchise and the first installment of the Millennium series. Directed by Masaaki Tezuka, it serves as a direct sequel to the original 1954 Godzilla film, effectively ignoring all previous continuity in the series. This film features an intense and thrilling battle between Godzilla and a new version of Mechagodzilla, marking the monster's return to the franchise after a lengthy hiatus since the 1970s." ,poster: "Godzilla Against Mechagodzilla", monsterDesigner: "Monster(s) Design: Yukiharu Seshimo", Director: "Director(s): Masaaki Tezuka", year: 2002, era: .millennium, monsterender: "godzilla_millennium_pop_up"),
    Movie(title: "Godzilla, Mothra and King Ghidorah:Giant Monsters All-Out Attack",originaltitle: "ゴジラ・モスラ・キングギドラ 大怪獣総攻撃 (Gojira Mosura Kingu Gidora: Daikaijū Sōkōgeki)", description: "Godzilla, Mothra and King Ghidorah: Giant Monsters All-Out Attack (2001), often abbreviated as GMK, is a 2001 kaiju film directed by Shusuke Kaneko. It is the 26th film in the Godzilla series and serves as a part of the Millennium era of Godzilla films. Unlike many of its predecessors, GMK is a stand-alone entry, not connected to any previous continuity, and it stands out for its darker tone, supernatural themes, and emphasis on Godzilla as a force of vengeful nature rather than as a misunderstood creature or antihero." , poster: "Godzilla, Mothra and King Ghidorah: all out attack", monsterDesigner: "Monster(s) Design: Takeshi Shimizu", Director: "Director(s): Shinsuke Kaneko", year: 2001, era: .millennium, monsterender: "gmk_pop_up"),
]
