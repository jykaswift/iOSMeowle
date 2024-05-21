//
//  AuthUITests.swift
//  meowleUITests
//
//  Created by Евгений Борисов on 21.05.2024.
//

import XCTest

private extension String {
    static var authTestName = "Александр"
}

final class AuthUITests: BasePage {

    func testAuth() {
        openApp(isAuthorised: false)

        MeowleAuthPage()
            .taptextField()
            .typeTextTo(textField: .authTestName)
            .tapEnterButton()

        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()

    }

    func testLogout() {
        openApp(isAuthorised: true)

        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()

        TabBarElement()
            .tapSettingsButton()

        SettingsPage()
            .checkSettingsPageIsOpened()
            .tapLogoutButton()

        MeowleAuthPage()
            .checkAuthPageIsOpened()
    }

}
