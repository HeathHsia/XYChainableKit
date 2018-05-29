# XYChainableKit

The category of the UIKit attribute chain programming<br>


### For example:<br>
UIView+Chainable<br>
```
view.XYBackgroundColor([UIColor redColor]).XYFrame(CGRectMake(100, 100, 100, 100));
```

UILabel+Chainable<br>
```
label.XYFrame(CGRectMake(100, 250, 50, 40)).XYText(@"Label Text").XYBackgroundColor([UIColor orangeColor]).XYAlpha(0.3).XYTextAlignment(NSTextAlignmentCenter)
```

UIButton+Chainable<br>
```
button.XYTitleForState(@"456", UIControlStateNormal).XYBackgroundColor([UIColor orangeColor]).XYFrame(CGRectMake(100, 450, 70, 70)).XYTitleColorForState([UIColor redColor], UIControlStateNormal)
```
### Installation

```#import "UIView+Chainable.h"```


