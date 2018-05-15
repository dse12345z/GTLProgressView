# GTLProgressView
![](https://lh3.googleusercontent.com/slV8_lePdQ9_jgZ6QF41CSxSHZhskUPlzXqGGVBZz7SqCn-nzx-SGLjROCGg5XPl3W0e4xYoBTQvTajChmYQINKVbTWCnbEf418qD3w2V5w1VpEViYmp-6RPV3AbNhR5se1Ur4yu5YyRECIDKD4yodwUS7XHJ_wd9aeOZAfoltncA0S5T6uSB0CWeqEKf-vgZJZhetriBqWJZNLKQVF9vv_zpuOcmK7JMSZP4d8s7Wu4Qd7kPxfQKr3q8lMnqT2yTKfcElPJOisT6l1C5Cs3DS9209WEKoQFZQw6NS0YwcajwpQ2x5umPvKi9FpdlKsIRJKSk5VR9Ur8vbZERFLi5FLZdAUYcPHi_VSESq1Zgc3L6RaU1xtVpX-NeLmD3k8Tsa-YxzdD2jAOUSGxiyF_WA65qnjloZjqd_sxNKeIpiLrJk-2wr-ksYm1FRGcaA4-Blkp2A3JfOhs5ciWmtPLFWcYUQoXoQScj-a2xZRPtufLqvFUssPDjEwz07yHNDjAsyscTawXY_ywkZUNjCA9faTNU_LfhGo2YFReFpQ5OcFgDdhZqcSGaIx-c2qPeLaA=w1440-h658)

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
