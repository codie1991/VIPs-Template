//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Input {
    func fetchSomething()
}

class ___FILEBASENAMEASIDENTIFIER___: ___FILEBASENAMEASIDENTIFIER___Input {

    var output: ___VARIABLE_productName:identifier___PresenterInput?

    // MARK: Business logic

    func fetchSomething() {
        // NOTE: Make an API call directly or using a model repository
    }

    private func processForPresenter() {
        // NOTE: Pass the result to the Presenter
        output?.present()
    }
}
