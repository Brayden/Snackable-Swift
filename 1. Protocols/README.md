# Protocols

Protocols are a very powerful part of the Swift language when used to their full potential. Ultimately it allows developers to adhere to the Single Responsibility Principle in a very clean, modularized manner. In this tutorial we're going to turn you into a protocol-ninja and introduce the true power protocols possess.


# Story

Every good development team sprint starts with a story, and ours begins no differently. Let's set the scene for what we're setting out to do and paint the picture of our project.

Our project manager has informed us that we need to make an application where users can browse items, some allow the end-user to purchase them and some may not. If an item is able to be purchased then support needs to be added to allow that item to be added to the users shopping cart. To take it a step further, *(typical project managers)*, some items can also have a discount applied to them to reduce their price.

Okay – so this may seem like a lot but I promise you it's not. Protocols are going to rescue us from what might sound like a nightmare.

## QA Testing

Phew... so far we've not only handled a barrage of requirements from our project manager but we have now also used protocols to meet the requirements. At least, we think. Now it's time for us to hand it off to our QA team to ensure our code is bug-free and works as expected.

While we're waiting on a Jira ticket to be created in our name though, let's be enthusiastically proactive developers that we are and write some unit tests to confirm our code is acting as we'd expect. Testing protocols is actually quite simple.
