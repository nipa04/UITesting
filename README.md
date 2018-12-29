# iOS UITesting

iOS UITesting or regression testing is an important steps to gain release confidence. Unit Test can cover code logic but can’t guaranty visually it’s going to work as expected. There are not much help out there for iOS XCTest based. Most of them are cross platform or 3rd party which doesn’t reflect real power of UITesting. 

## Architecture 

Following a good architecture is one of the most important part of any level development. I started with static method based but then found another one  which is much efficient. 

### Method 1
* Convert all testable screen to swift page 
* Expose static method to find all accessible UI component 
* Create static property or method to expose a common function
* Use it to do your real test  

### Method 2

There are some problem of method one. Like:
* Accessibility identifier could out of sync with developer 
* It’s not scaleable in terms of functionality 

To overcome it, here is the better system:
* Create an identifier swift file that common to real target project and UITest project 
* Developer will create `enum` and add each identifier as `case`
* Automation team will use it to expose functionality
* Moreover each enum can adopt a common protocol to do automation test

Please take a look at HitList project 
https://github.com/nipa04/UITesting/tree/master/Project%2024%20-%20HitList/HitListUITest  
