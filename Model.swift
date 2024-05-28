import Foundation

struct Article: Codable, Identifiable {
    var id: UUID {
        return UUID()
    }
    let title: String
    let description: String?
    let url: String
    let urlToImage: String?
}

struct NewsResponse: Codable {
    let articles: [Article]
}

struct Exercicio: Identifiable, Codable {
    var id = UUID()
    let nome: String?
    let descricao: String?
    let repeticoes: Int?
    let series: Int?
    let video: String?
}
