# GTLProgressView
![alt tag](https://lh3.google.com/u/0/d/1M5rxBpXbZBYIfoxTsNwZzm5KCm-1FZM7=w1440-h658-iv1) 

Usage
=============
```
// init
CGRect frame = self.boardView.bounds;
UIImage *backgroundImage = [UIImage imageNamed:@"btn_SMScode0"];
UIImage *progressImage = [UIImage imageNamed:@"btn_SMScode"];
[GTLProgressView initWithFrame:frame backgroundImage:backgroundImage progressImage:progressImage];
```
```
// set progress value
self.progressValue += 0.01;
[self.gtlProgressView setProgress:self.progressValue];
```
