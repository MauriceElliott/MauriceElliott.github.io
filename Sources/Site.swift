import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Codedawa"
    var titleSuffix = " – Code Dawa"
    var url = URL(static: "https://codedawa.dev")
    var builtInIconsEnabled = true

    var darkTheme: (any Theme)? { CustomDarkTheme() }
    var author = "Maurice Elliott"

    var homePage = Home()
    var layout = MainLayout()
    
    var articlePages: [any ArticlePage] {
        ArticleLayout()
    }
}

struct CustomDarkTheme: Theme {
    var colorScheme: ColorScheme = .dark

    var font: Font = Font(
        name: "Annotation Mono",
        source: "./../Assets/fonts/Regular.woff2"
    )

    var headingFont: Font = Font(
        name: "Annotation Mono",
        source: "./../Assets/fonts/Regular.woff2"
    )

    var monospaceFont: Font = Font(
         name: "Annotation Mono",
         source: "./../Assets/fonts/Regular.woff2"
     )

}
