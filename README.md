![OpenClassrooms Logo](https://lh3.googleusercontent.com/jHFLsk0a2IDpofZxpPhZNgOsydDD1dqbUZKfO_hwvexataXSPp0oHMDm5WJJkZ8WFLnNqtEiLRHGRRw=w2880-h1632)

This repository is the base code for [this project](https://openclassrooms.com/projects/ameliorer-une-application-existante) on openclassrooms.com.
It's part of OpenClassrooms' iOS path which can be found here.

# ZozorPlus


### Context

Students are supposed to clone or fork the repo and improve it. Their focus should be on the following aspects :
- Responsiveness
- Documentation
- Tests
- Bonus feature

My bonus: 
For the bonus I have implemented that times (*) button on the calculator.
I also have written the alert for wrong entry that was is the subject but unecessary for the validation of the project.

### Architecture

My project has been written following the MVVM achitecture rules. 

#### ViewModel:

The `ViewModel` encapsulates the whole logic which doesn't have to be in the ViewController. It's divided in two parts :

* **Inputs**: Every event from the viewController needs to be implemented in the viewModel, since it's listening for them. The main event which always need to be added is `viewDidLoad()`.
* **Outputs**: After `viewDidLoad()`, the viewController is listening for some changes from the `viewModel`. For this, the `viewModel` needs to provide reactive var for each data/state needed. The main rule is to keep separate the UI logic between viewModel and viewController, so keep in mind that a viewModel can only `import Foundation` -> reactive var con't provide data from `UIKit` like `UIImage` for example ☝️.

#### ViewController:

The last layer and not the less important 🙇‍♂️. But as it is mentioned in it's name, a `ViewController` only exists to **control**. So, if you want to test it, you'll only provide UI test, since the logic is extracted in the corresponding `ViewModel`.

#### Tests

This target contains the differents tests on `GridViewModel` and `HomeViewModel`.
