# Protocols

Protocols are a very powerful part of the Swift language when used to their full potential. Ultimately it allows developers to adhere to the Single Responsibility Principle in a very clean, modularized manner. In this tutorial we're going to turn you into a protocol-ninja and introduce the true power protocols possess.


# Story

Every good development team sprint starts with a story, and ours begins no differently. Let's set the scene for what we're setting out to do and paint the picture of our project.

Our project manager has informed us that we need to make an application where users can browse items, some allow the end-user to purchase them and some may not. If an item is able to be purchased then support needs to be added to allow that item to be added to the users shopping cart. To take it a step further, *(typical project managers)*, some items can also have a discount applied to them to reduce their price.

Okay – so this may seem like a lot but I promise you it's not. Protocols are going to rescue us from what might sound like a nightmare.

# QA Testing

Phew... so far we've not only handled a barrage of requirements from our project manager but we have now also used protocols to meet the requirements. At least, we think. Now it's time for us to hand it off to our QA team to ensure our code is bug-free and works as expected.

While we're waiting on a Jira ticket to be created in our name though, let's be enthusiastically proactive developers that we are and write some unit tests to confirm our code is acting as we'd expect. Testing protocols is actually quite simple.

Let's write our tests starting with creating 100% test coverage on our `Purchaseable` protocol. In Xcode's left hand navigator pane open up your projects Test folder and create a new file, select `Unit Test Case Class` as the template type and name your file `PurchaseableTests.swift`.

TLDR; [PurchaseableTests.swift](https://github.com/Brayden/Snackable-Swift/blob/master/1.%20Protocols/ProtocolExamplesTests/Protocols/PurchaseableTests.swift)

In order for us to be able to test our protocol we need to create a mock object that adheres to it. Above our class declaration of our new file let's go ahead and create this mock class.

```
struct MockPurchaseable: Purchaseable {
    var displayName: String?
    var price: Double?
    var allowsDiscounts: Bool?

    init(displayName: String, price: Double) {
        self.displayName = displayName
        self.price = price
    }

    mutating func setupPurchaseable() { }
}
```

Why a mock class? This is only meant to be a placeholder within our test file so we can create an object that adheres to our `Purchaseable` protocol for us to test and verify the functionality works as expected.

The variables we define are simply from `Purchaseable` along with the `init` and `setupPurchaseable()` functions. Unfortunately we cannot test a protocol by itself which is why we're creating this mock class in the first place. This allows us to run our tests against a valid class that adopts the protocol functions for us to run our tests against. Woo.

There are 3 scenarios we want to test.

 1. Initialization
 2. Adding an item to the cart
 3. Applying a discount

Within our `PurchaseableTests` class now we'll create these three shell functions that we will fill in together, like so:

```
func testInitialization() {

}

func testAddToCart() {

}

func testShouldApplyDiscount() {

}
```

For those who may be less familiar with writing unit tests, all your functions should be prefixed with `test` in the name for the compiler to automatically pick up on running them when you press CMD + U.
