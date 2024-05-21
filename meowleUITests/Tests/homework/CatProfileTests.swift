//
//  CatProfileTests.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest

private extension String {
    static let catBaton = "Батон"
}

final class CatProfileTests: BasePage {

    func testLikeCat() {
        openApp(isAuthorised: true)

        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapSearchField()
            .typeTextTo(textField: .catBaton)
            .tapSearchButtonWithAccessibilityIdentifyer()

        SearchResultsPage()
            .checkResultsHasItemWith(text: .catBaton)
            .tapCatAt(position: 0)

        CatProfilePage()
            .tapLikeButton()
            .checkLikesCount(with: 6)

    }
}
