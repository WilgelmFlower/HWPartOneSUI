import SwiftUI

struct ListData: Identifiable {
    var id = UUID()
    var image: Image
    var text: String
}

var modelData: [ListData] = [
    ListData(image: Image(systemName: "music.note.list"), text: "Плейлисты"),
    ListData(image: Image(systemName: "music.mic"), text: "Артисты"),
    ListData(image: Image(systemName: "square.stack"), text: "Альбомы"),
    ListData(image: Image(systemName: "music.note"), text: "Песни"),
    ListData(image: Image(systemName: "tv"), text: "Телешоу и фильмы"),
    ListData(image: Image(systemName: "music.note.tv"), text: "Видеоклипы"),
    ListData(image: Image(systemName: "guitars"), text: "Жанры"),
    ListData(image: Image(systemName: "person.2.crop.square.stack"), text: "Сборники"),
    ListData(image: Image(systemName: "music.quarternote.3"), text: "Авторы"),
    ListData(image: Image(systemName: "arrow.down.circle"), text: "Загружено"),
    ListData(image: Image(systemName: "music.note.house"), text: "Домашняя коллекция"),
]
