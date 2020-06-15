# BoatsSwift

This is the official API library for [Discord Boats](https://discord.boats) in the programming language: Swift. 

## How do I add this library to my workspace?

In your `Package.swift` file, just add ```.package(url: "https://github.com/DiscordBoats/BoatsSwift", .branch("master"))``` to your dependencies, and add `BoatsSwift` in your target dependencies. 

## How do I use the library? 

The package is very simple. You just import the library, initalise the library with the API key, and call the methods to get relevant information.

## Examples

### Getting the library ready to connect to the website's API (THIS IS VERY IMPORTANT, METHODS WILL FAIL IF YOU DO NOT DO THIS)
```swift
import BoatsSwift 
let boats = BoatsSwift("apiKey")
```
### Posting a server count to the website's API.
```swift
boats.postStats(botID: (exampleBotID)!, serverCount: 0) // exampleBotID must be passed as UInt64
``` 
And **voilá**! This should post the server count to the website's API, and it will return an JSON response saying if it was successful. In the occasion that it was not successful, it will return an JSON response with an error message and you should be able to figure what went wrong.

### Requesting user information from the website's API.
```swift
boats.getUser(userID: exampleUserID) // This must be passed as UInt64
``` 
And **voilá**! This should return an JSON response with all the user details. In the occasion that it was not successful, a error message will be returned and you should be able to figure what went wrong.

### Requesting bot information from the website's API.
```swift
boats.getBotInfo(botID: exampleBotID) // This must be passed as UInt64
``` 
And **voilá**! This should return an JSON response with all the bot details. In the occasion that it was not successful, a error message will be returned and you should be able to figure what went wrong.

### Checking if a user voted for the bot
```swift
boats.getUserVoted(botID: exampleBotID, userID: exampleUserID) // This must be passed as UInt64
``` 
And **voilá**! This should return an JSON response confirming if the user has voted or not. In the occasion that it was not successful, a error message will be returned and you should be able to figure what went wrong.

## IMPORTANT NOTE
All parameters that are either bot IDs or user IDs must be passed as UInt64, in order for the library to function as intended. More information about UInt64 can be found [here](https://developer.apple.com/documentation/swift/uint64)

#### This library was re-written to add full API coverage on 15th June 2020.
