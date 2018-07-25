# VIPs template
This template follows the VIP architecture cycle for organizing UIViewController code.

## How to install the template

run `make install_templates` from inside this directory, or uninstall with `make uninstall_templates`

You need to place the VIPs.xctemplate into the following folder.
`~/Library/Developer/Xcode/Templates/Project Templates/`
Create any folder that don't exist.


## What's a VIPs
VIPs components are as follows
- View: This is the UIViewController
- Interactor: This is what we rely on to fetch our data from a db or the network
- Presenter: This is responsible for creating a ViewModel and updating the ViewModel
- state: This is the ViewState, whether a view is loading, has data or an error


## How do these components work together
This architecture is built around a UIViewController as this is how the iOS ecosystem operates.

A `UIViewController` or `View`, is the entry point into performing a runtime loop. The view has an `output` property which is a pointer to an `Interactor`. Normally when the lifecycle method `onViewDidAppear` is called we trigger `output?.fetch()` in order to begin our API or DB calls.

Once the Interactor has performed the operation it calls on its `output` property which is the `Presenter`.

The presenter will format and handle the response for display, maybe we have an error, or some data to display. That will be wrapped up into a `ViewState` object and passed to the presenters `output`, the View. The View will then trigger a render.
