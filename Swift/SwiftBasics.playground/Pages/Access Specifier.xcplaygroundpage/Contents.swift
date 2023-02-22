//: [Previous](@previous)

import Foundation

// 1.  Module
// 2.  With-in application

// Access Level : Decides or restrict the access to parts of your code

// 1. Private: 1. Private is most restrictive access specifier
//             2. private is not accessible outside the class.
//             3. private are accessible inside the extension if extension is in same file. If we create                   extension in another file private will not be accessible.

//2. Fileprivate 1. Fileprivate is accessible only in the file not outside the file.
//              2. If you declare 10 classes/struct/enum in same file all classes, enum, struct will be able to access file private.

//3. internal: 1. internal is default access specifier.
            // 2. Internal are accessible anywhere within the same module.

//4. public 1. Public member can be accessed outside the module.
//          2. But it can not be overrider or subclassed.

//5. open    1. open member can be accessed outside the module.
//           2. You are allowed to override or subclass open member.


//: [Next](@next)
