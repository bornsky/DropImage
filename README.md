#DropImage

This project comes from cropping images in CoreGraphic from [Lee Brimelow](https://www.youtube.com/watch?v=rvKyeOqMldA&list=PLCboy8hdgWNnOHGEP7j8qTpHrzZWIV07P)
I added a little gravity and snap behavior to it.

##Setup
Git clone this project into the folder you want locally using your teminal

+ Add your own image:

```swift

let image = imageView.image
imageView.image = image?.cropToImage(UIColor.blueColor(), lineWidth: 20)
self.view.addSubview(imageView)
self.animator = UIDynamicAnimator(referenceView: self.view)

```
+ Change the UIColor to whatever color you want
```swift
UIColor.orangeColor()
UIColor.brownColor()
UIColor.redColor()
UIColor.blackColor()
UIColor.whiteColor()
UIColor.yellowColor()
UIColor.greyColor()
UIColor.greenColor()
```

+ Add gravity behavior to the drop image:

```swift
let gravity = UIGravityBehavior(items: [self.imageView])
gravity.gravityDirection = CGVectorMake(20, 20)
self.animator.addBehavior(gravity)
```

+ Add snap behavior to the drop image

```swift
let snap = UISnapBehavior(item: self.imageView, snapToPoint: CGPoint(x: 130, y: 180))
self.animator.addBehavior(snap)
```

## License

DropImage is available under the MIT license. See the LICENSE file for more info.