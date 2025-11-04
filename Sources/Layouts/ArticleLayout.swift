import Foundation
import Ignite

struct ArticleLayout: ArticlePage {
    var body: some HTML {
        Text(article.title)
            .font(.title1)

        Text(article.date.formatted(date: .long, time: .omitted))
            .foregroundStyle(.secondary)
            .font(.lead)

        if let image = article.image {
            Image(image, description: article.imageDescription)
                .resizable()
                .cornerRadius(20)
                .frame(maxHeight: 400)
        }

        if let tags = article.tags {
            Section {
                Text("Tagged with: \(tags.joined(separator: ", "))")
                    .font(.body)
            }
            .margin(.top, 10)
        }

        Text(article.text)
            .margin(.top, 20)
    }
}
