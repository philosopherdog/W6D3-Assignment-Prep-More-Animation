### UIActivityViewController, Xibs, Custom UIButton, UIPropertyAnimator, CALayer, CAAnimation

Today I went over a bunch of things related to the assignment today. I live coded a project found in W6D3 folder that demonstrates the following:

1. how to load a view from a Xib file.
2. how to do a callback from a custom containing view button tap to a view controller using 2 techniques: a) Notification Center passing a data object back in the userInfo Dictionary, b) using a function, and then refactoring it into using a block.
3. how to create a UIActivityViewController.
4. how to understand the UIActivityViewController documentation by understanding the parameters needed.
5. how to present a view controller modally using ```present(_: animation: completion:)```, and how this is different from calling ```pushViewController(_: animated:) ``` on the `UINavigationController`
6. how to create a capture list for capturing an unowned copy of self inside block expressions.
7. how to override UIButton and create a custom round button with a vector PDF image created in Sketch.
8. how to create an IBDesignable class with IBInspectable properties that you can set in storyboard to view the custom changes to an overridden UIButton.
9. how to post to social media using UIActivityViewController.
10. how to take a snapshot of a xib file to post to social media.

Next we looked at the new animation framework introduced in iOS 10 `UIViewPropertyAnimator`.

I spoke about CALayer at some length and showed some of the properties on CALayer and how CAShapeLayer and CAGradientLayer are probably the most important subclasses.

I stepped through a project demonstrating this instead of CAAnimation. This class is much more useful to learn about than CAAnimation since it allows us to interact with animations without much difficulty.

Please see the code in the folder `MyPropertyAnimator`.

I also spoke a bit about how to make network requests in Swift and how to parse JSON and did some live coding for a couple of students. Please find the code in `URLSession_JSON_Swift.playground`.

Finally, for those interested I have included the slides for core animation and a playground that shows a few animations. See the playground in folder:  `W6D3-CoreAnimation-playground`, and the pdf called `W6D3 - Core Animation`.

[Get all files here](https://github.com/philosopherdog/W6D3-Assignment-Prep-More-Animation)
