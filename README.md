## NSRemoteLog

LICENSE: MIT

AUTHORS:

* Giordano Scalzo <http://giordanoscalzo.tumblr.com/> [@giordanoscalzo](http://twitter.com/giordanoscalzo)

I needed a simple library to have NSLog lines in remote.
Didn't find anything simple, so I wrote one :-)

### Instructions

First of all, install the server https://github.com/gscalzo/NSRemoteLogServer

Then install the library in your project (I rather use CocoaPods, but the library is prject agnostic).

Add this macro to your precompiled header:
``` objective-c
   #import "NSRemoteLog.h"
    #define NSLog(__FORMAT__, ...) [NSRemoteLog log:[NSString stringWithFormat:__FORMAT__, ##__VA_ARGS__] serverUrl:@"http://hollow-galaxy-7080.herokuapp.com/"]
```

changing http://hollow-galaxy-7080.herokuapp.com/, with your server address.