//
//  SettignsPage.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest

private extension String {
    static let settingsPageIdentifier = "settingsScreenViewController"
    static let logoutButtonIdentifier = "logOutFromApplication"
}

final class SettingsPage: BasePage {

    private lazy var settingsPage = app.otherElements[.settingsPageIdentifier]
    private lazy var logoutButton = app.buttons[.logoutButtonIdentifier]

    @discardableResult
    func checkSettingsPageIsOpened() -> SettingsPage {
        XCTAssertTrue(settingsPage.waitForExistence(timeout: .timeout))
        return self
    }

    @discardableResult
    func tapLogoutButton() -> SettingsPage {
        logoutButton.tap()
        return self
    }
}
