# @title Protecting Intellectual Property

# Protecting the Intellectual Property in your SketchUp Extensions

The code you write in your extensions is your intellectual property. You may choose to open source it or you might want to keep it hidden so no one else can see it.  In this guide we’ll explain why hiding it can be tricky and what you need to know to protect your IP.

## Ruby code is visible. Period.

If you simply distribute your extension in an .rb file, anyone can open that file and see the code you’ve written. This is true even if your ruby file is wrapped in an .rbz file. This obviously isn’t good if you don’t want people to see your code. You can obscure your code through encryption and that’s a good step but even that’s not perfect protection.

Unlike languages like C that must be compiled into machine language, Ruby runs inside an interpreter. Even if you’ve encrypted your code it must be decrypted in order to run. If someone is determined enough, there are ways to expose your Ruby code from within the running process. 

So is it hopeless to try to hide your source code? Should you just give up on writing extensions? No!  But you should explore the options and choose what works best for you. Read on to learn more.

## Encryption can be broken

No encryption is perfect. Like the lock on your door, it’ll keep out the vast majority of people but if someone is determined enough they’ll find a way in. And there are a lot of determined hackers out there. Some are malicious and some just enjoy solving puzzles but the end result is that secure encryption remains a moving target.

## RBS and RBE options

Over the years we’ve provided two encrypted file formats for SketchUp extensions: .RBS and .RBE files. RBS (which is no longer offered) used a scrambling technology. RBE is the newer format that uses a more sophisticated encryption. Neither of these have been infallible though and we don’t recommend depending solely on them to protect your code. 

## Encryptors, obfuscators, and minifiers

Other developers use tools to make their Ruby code harder to understand.  Obfuscators make your code more complex, and minifiers remove all unnecessary characters in your code. Both techniques try not to change the functionality of your code but serve to make it harder to read. 

## Compiling your code into a C library

One of the best ways to hide your code is to write it in C and compile it into a library. Unlike with Ruby where you need to distribute your source code, your compiled C code has been translated into machine language binary files. The machine instructions are still human readable with the right tools but they are much more difficult to understand than the original C.

But make no mistake, even this doesn’t completely obscure your logic. Yes, it protects your source code because there’s no way to rehydrate your exact code (including comments and variable names), but a determined hacker can use decompilation to expose your logic. This is true for all software written in compiled code, not just SketchUp extensions. Decompilation is sometimes referred to as turning a sausage back into a pig.  There’s only so much that can be done, but with the right tools you can at least get the sausage into the shape of a pig.

Your C extension will still need Ruby code but if you keep your Ruby simple (e.g. just the UI code) then you have less to lose from someone stealing this code. 

## Layering multiple levels of protection

As a best practice we recommend layering multiple levels of protection so you don’t have a single point of failure.  

Also consider what you are protecting against. Are you protecting your license logic from being tampered with, or are you trying to protect the intellectual property in your source code? Not all risks are equal. Your logic for setting up menus and dialogs is not likely to be as important as your algorithms. Focus on protecting the parts of your product that make it special.

## Consider Alternatives
Would it be acceptable for you to open source your software? There are businesses that make a living out of producing open source software. They earn their income by selling services and support related to the software, despite the fact that their entire source code is open to everyone, legally free to copy and modify. The experience, service, and support of a product is also a vital part of its value.

## Summary
Protecting your software product is a constant arms race, and your time is valuable. You’ll need to decide how important it is to protect your source code.  You may also want to keep in mind that not every illegal copy equals a lost sale. Many users of pirated software wouldn't have paid for it in the first place.  Giving your code an open source license and allowing others to freely use it can let you avoid the hassles from hiding your code. 

But this isn’t always desirable or even possible. If you need to protect your code from prying eyes, our recommendation for most developers is to use a layered approach. Don't rely on a single solution. Ideally you have control over at least one of these solutions so you can swap it out if needed. In the end this is a cost/effort/gain balance that will differ from case to case.

## Further Reading
- [Obfuscation and Decompilation](https://jonskeet.uk/csharp/obfuscation.html)
- [Protecting your code from decompilation](https://stackoverflow.com/a/2478504/486990)
- [Obfuscators](https://stackoverflow.com/a/19525834/486990)
- [NDepend decompilation protection](https://blog.ndepend.com/dont-rely-on-someone-else-to-protect-your-software/)
- [Is obfuscation worth it?](https://security.stackexchange.com/a/107076/87978)
- [Does obfuscation have a security benefit?](https://security.stackexchange.com/a/219347/87978)
