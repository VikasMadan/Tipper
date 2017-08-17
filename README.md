# Pre-work - *Tipper*

**Tipper** is a tip calculator application for iOS.

Submitted by: **Vikas Madan**

Time spent: **5** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [x] Remembering the bill amount across app restarts (if <10mins)
* [x] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Added background colors to both the scenes.
- [x] Associated an appicon for the application, also added a UI Image view to LaunchScreen Storyboard.
- [ ] Create an option for custom tip percentages.
- [ ] Display the per person contribution for more than 1 (option for custom no. of people in the party)

## Video Walkthrough 

Here's a walkthrough of implemented user stories:
![Video Walkthrough](http://i.imgur.com/oFgz5Yw.gifv)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** It was fun and enjoyable to build this out. There are lot of things (mainly syntax) that will still need a lot of getting used to but so far Swift has left a great impression on me. I hope to learn and build better apps soon. Outlets are like a connection between various screens of the app, actions on the other hand is a behavior that's resulted as a result of some change in the application. The content of the storyboard file is actually stored as an XML, with actions defined as xml nodes/attributes.

Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:** Strong reference cycle for closures can happen when closure references a property of class instance.


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
