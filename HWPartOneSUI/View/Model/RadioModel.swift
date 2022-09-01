import SwiftUI

struct ListRadio: Identifiable {
    var id = UUID()
    var image: Image
    var typeRadio: String
    var genreRadio: String
    var infoRadio: String
}

struct ListRadioStation: Identifiable {
    var id = UUID()
    var image: Image
    var nameRadio: String
    var typeRadioStation: String
}

var modelRadio: [ListRadio] = [
    ListRadio(image: Image("basta"), typeRadio: "Новый выпуск", genreRadio: "Музыкальный базар с Бастой", infoRadio: "Новое шоу."),
    ListRadio(image: Image("top100"), typeRadio: "Избранная радиостанция", genreRadio: "Топ чартов Америки", infoRadio: "То, что слушают прямо сейчас."),
    ListRadio(image: Image("hiphop"), typeRadio: "Избранная радиостанция", genreRadio: "ХИП-ХОП", infoRadio: "Идеальные биты и рифмы."),
    ListRadio(image: Image("pop"), typeRadio: "Избранная радиостанция", genreRadio: "Только поп-музыка", infoRadio: "Все топ-хиты."),
    ListRadio(image: Image("workout"), typeRadio: "Избранная радиостанция", genreRadio: "Поп-музыка для тренировок", infoRadio: "Вперед и с музыкой!"),
    ListRadio(image: Image("electro"), typeRadio: "Избранная радиостанция", genreRadio: "Электронная музыка", infoRadio: "Пульт с лучшими треками."),
    ListRadio(image: Image("rock"), typeRadio: "Избранная радиостанция", genreRadio: "Классика рока", infoRadio: "Гении гитарного звука."),
    ListRadio(image: Image("dance"), typeRadio: "Избранная радиостанция", genreRadio: "Танцевальная музыка", infoRadio: "Современные и будущие хиты.")
]

var modelRadioStation: [ListRadioStation] = [
    ListRadioStation(image: Image("relax"), nameRadio: "Музыка для расслабления", typeRadioStation: "Электронная медитация."),
    ListRadioStation(image: Image("top100"), nameRadio: "Топ чартов Америки", typeRadioStation: "То, что слушают прямо сейчас."),
    ListRadioStation(image: Image("electro2"), nameRadio: "Классика электронной музыки", typeRadioStation: "Как рождался саунд будущего."),
    ListRadioStation(image: Image("rock"), nameRadio: "Классика рока", typeRadioStation: "Гении гитарного звука."),
    ListRadioStation(image: Image("classic"), nameRadio: "Классика", typeRadioStation: "Гении классической музыки."),
    ListRadioStation(image: Image("hiphop"), nameRadio: "Хип-хоп", typeRadioStation: "Идеальные биты и рифмы.")
]

