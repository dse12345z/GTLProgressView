# GTLProgressView
![alt tag](https://lh3.googleusercontent.com/BW_bp8EfJWAt0hclqEs23LdpJ-t2R6bHkKGGrt7E9lIKEuIWzN5tLCd2C4OXUftgyGMeO040wZBAu7WqkMpA=w1440-h960) 

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
