//
//  SearchUITests.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest
import Swifter

private extension String {
    static let firstCatName = "Кот №1"
    static let secondCatName = "Кот №2"
    static let thirdCatName = "Кот №3"
}

final class SearchUITests: BasePage {


    func testAllCats() {
        
        // MARK: На всякий случай добавил, просто особо смысла нет в этом так как это мок по умолчанию
//        setNetworkStub(for: "core/cats/allByLetter",
//                       jsonFilename: "core_cats_allByLetter")

        openApp(isAuthorised: true)
        MeowleSearchCatPage()
            .tapAllNamesButton()

        SearchResultsPage()
            .checkSearchResultsPageIsOpened()
            .compareResultsCountWith(count: 3)
            .checkResultsHasItemWith(text: .firstCatName)
            .checkResultsHasItemWith(text: .secondCatName)
            .checkResultsHasItemWith(text: .thirdCatName)
    }
}
