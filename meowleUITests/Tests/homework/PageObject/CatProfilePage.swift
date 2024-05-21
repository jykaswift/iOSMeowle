//
//  CatProfilePage.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest

private extension String {
    static let likesButtonIdentifier = "likeButton"
}

final class CatProfilePage: BasePage {
    
    private lazy var likeButton = app.buttons[.likesButtonIdentifier]

    @discardableResult
    func tapLikeButton() -> CatProfilePage {
        likeButton.tap()
        return self
    }

    @discardableResult
    func checkLikesCount(with count: Int) -> CatProfilePage {
        XCTAssertTrue(likeButton.label.contains(String(count)))
        return self
    }

}
