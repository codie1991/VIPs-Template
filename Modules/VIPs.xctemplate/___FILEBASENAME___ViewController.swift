//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___FILEBASENAMEASIDENTIFIER___Input: class {
    var state: ___VARIABLE_productName:identifier___ViewState { set get }
}

class ___FILEBASENAMEASIDENTIFIER___: UIViewController, ___FILEBASENAMEASIDENTIFIER___Input {

    var output: ___VARIABLE_productName:identifier___InteractorInput?

    var state: ___VARIABLE_productName:identifier___ViewState = .loading {
        didSet {
            render(state: state)
        }
    }

    // MARK: Object lifecycle
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("❌ init(coder:) has not been implemented")
    }

    deinit {
        print("♻️ Dealloc \(type(of: self))")
    }

    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Call output here
        output?.fetchSomething()
    }

    // MARK: Event handling
    private func setupViews() {
        // NOTE: Set view constraints
    }

    private func render(state: ___VARIABLE_productName:identifier___ViewState) {
        switch state {
            case .loading:
                print("Loading")

            case .data(let model):
                print("Data fetched")

            case .empty:
                print("Empty")

            case .error(let message):
                print("Error: \(message)")
        }
    }

}
