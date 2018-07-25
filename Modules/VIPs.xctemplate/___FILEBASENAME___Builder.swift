//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ {

    // MARK: Configuration

    class func configure() -> UIViewController {
        let viewController = ___VARIABLE_productName:identifier___ViewController()

        let presenter = ___VARIABLE_productName:identifier___Presenter()
        presenter.output = viewController

        let interactor = ___VARIABLE_productName:identifier___Interactor()
        interactor.output = presenter

        viewController.output = interactor

        return viewController
    }
}
