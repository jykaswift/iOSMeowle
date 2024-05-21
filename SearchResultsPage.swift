//
//  SearchResultsPage.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest

private extension String {
    static let searchTableViewIdentifier = "searchTableViewIdentifier"
    static let searchPageIdentifier = "searchResultsViewController"
    
}

final class SearchResultsPage: BasePage {

    private lazy var searchPage = app.otherElements[.searchPageIdentifier]
    private lazy var searchResultsTableView = app.tables[.searchTableViewIdentifier]

    @discardableResult
    func checkSearchResultsPageIsOpened() -> SearchResultsPage {
        XCTAssertTrue(searchPage.waitForExistence(timeout: .timeout))
        return self
    }

    @discardableResult
    func compareResultsCountWith(count: Int) -> SearchResultsPage {
        XCTAssertTrue(searchResultsTableView.cells.count == 3)
        return self
    }

    @discardableResult
    func checkResultsHasItemWith(text: String) -> SearchResultsPage {
        XCTAssertTrue(searchResultsTableView.cells.staticTexts[text].waitForExistence(timeout: .timeout))
        return self
    }

    @discardableResult
    func tapCatAt(position: Int) -> SearchResultsPage {
        searchResultsTableView.cells.element(boundBy: position).tap()
        return self
    }


}
