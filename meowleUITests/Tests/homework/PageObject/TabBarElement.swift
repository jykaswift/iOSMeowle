//
//  TabBarElement.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest

private extension String {
    static let ratingButton = "Рейтинг"
    static let addCatButton = "Добавить"
    static let favouriteButton = "Избранное"
    static let settingsButton = "Настройки"
    static let searchButton = "Поиск"

}

final class TabBarElement: BasePage {

    private lazy var ratingButton = app.buttons[.ratingButton]
    private lazy var addCatButton = app.buttons[.addCatButton]
    private lazy var favouriteButton = app.buttons[.favouriteButton]
    private lazy var settingsButton = app.buttons[.settingsButton]
    private lazy var searchButton = app.buttons[.searchButton]

    @discardableResult
    func tapRatingButton() -> TabBarElement {
        ratingButton.tap()
        return self
    }

    @discardableResult
    func tapAddCatButton() -> TabBarElement {
        addCatButton.tap()
        return self
    }

    @discardableResult
    func tapSettingsButton() -> TabBarElement {
        settingsButton.tap()
        return self
    }

    @discardableResult
    func tapSearchButton() -> TabBarElement {
        searchButton.tap()
        return self
    }

    @discardableResult
    func tapFavouriteButton() -> TabBarElement {
        favouriteButton.tap()
        return self
    }

}
