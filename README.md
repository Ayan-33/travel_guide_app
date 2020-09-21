```
 			                    -- Virtual Traveller --
				                      WIP
	  APP IS IN THE VERY EARLY DEVELOPMENT PROGRESS - AND DOESN'T REPRESENT THE FINAL STATE
```

# Virtual Traveller
![Build](https://img.shields.io/badge/Framework-Flutter-blue.svg)&nbsp;&nbsp;&nbsp;&nbsp;![Build](https://github.com/mzdm/virtual_traveller_flutter/workflows/build/badge.svg) [![codecov](https://codecov.io/gh/mzdm/virtual_traveller_flutter/branch/master/graph/badge.svg)](https://codecov.io/gh/mzdm/virtual_traveller_flutter)

Search for flights and deep dive into large offers of travelling destinations. Discover recommended and popular places. Hop on on the virtual mode to simulate travelling immediately to your desired destination and learn more about it, including interesting information and points of interests! 🚀

## Contents
\-

## Preview
\-

## Running the app
\-

## Idea
I wanted to make a flight searching app with interesting suggestions, fully from the scratch. However, due to the current situation with the pandemic, many countries are restricted for some citizens so travelling there isn't possible. This app has virtual travelling mode, which simulates the travelling here, displays interesting information about the desired location, including picture, points of interests and etc. There's a possibility to save the locations, so you can check them out later!

Powered by the [Amadeus for Developers](https://developers.amadeus.com/), which fits best for this use and offers a very good free monthly quota for testing!

## Visualizing the flow of the app
\-

## State management 
There's no unique rule on what to choose because it always depends on many criteria. When it came to deciding on which state management approach to use in my case, I was deciding between Provider and bloc library. Bloc library is already dependant on Provider package so it is fairly similar in terms of a dependency injection (DI) (a single instance of a Cubit or Bloc can be provided to all of the widgets within a subtree). [Read more here about bloc library](https://bloclibrary.dev/#/) and [Provider](https://pub.dev/packages/provider).

The reasons why I decided to use the bloc library in my case were following:
- use of the reactive streams, which goes well together with BLoC pattern
- easy and reliable tests via bloc_test library, which is based on Mockito
- it isn't only a state management library, but it also helps implement the BLoC (Business Logic Component) design pattern

## App Architecture
Using the bloc library allows us to separate our application into three layers:

- Presentation
- Business Logic
- Data
  - Repository
  - Data Provider
  - Models
  
![bloc](https://bloclibrary.dev/assets/bloc_architecture_full.png)
![cubit](https://bloclibrary.dev/assets/cubit_architecture_full.png)


## TO:DO list
### Basics:
- [ ] Features
  - [ ] Splash screen
  - [ ] Intro slider on the first app launch
  - [ ] Discover recommended / popular travelling destinations
  - [ ] Flights searching page
    - [ ] Flight length 
    - [ ] Filter by
      - [ ] Type of the way
        - [ ] One-way
        - [ ] Round Trip
        - [ ] Multicity
      - [ ] Passengers
        - [ ] Kids
        - [ ] Adults
      - [ ] Price
  - [ ] Virtual Mode
    - [ ] Simulate travelling on the map
    - [ ] Display interesting information about the destination
      - [ ] Average temperature past week
      - [ ] Pictures
      - [ ] Points of interests
    - [ ] Save locally to the Favorites
  - [ ] Settings
    - [ ] Default starting location
    - [ ] Language
    - [ ] Currency
    - [ ] Temperature format
    - [ ] Theme
    - [ ] Remove all locally saved data
- [ ] Language Support
  - [x] English
  - [x] Czech
  - [ ] Portuguese
  - [ ] French
  - [ ] German
  - [ ] Russian
- [ ] Supported Platforms
  - [x] Android
  - [x] iOS
  - [ ] Web

### Other:
- [x] CI / Github Actions
- [ ] Test coverage milestones
  - [ ] 40%
  - [ ] 60%
  - [ ] 80%

## Powered by these libraries
- #### Common packages:
    - [flutter_bloc](https://pub.dev/packages/flutter_bloc)
    - [rx_dart](https://pub.dev/packages/rxdart)
    - [pedantic](https://pub.dev/packages/pedantic)
    - [bloc_test](https://pub.dev/packages/bloc_test)
    - [mockito](https://pub.dev/packages/mockito)
    - [build_runner](https://pub.dev/packages/build_runner)
    - [json_serializable](https://pub.dev/packages/json_serializable)
    - [freezed](https://pub.dev/packages/freezed)
    - [meta](https://pub.dev/packages/meta)
    - [http](https://pub.dev/packages/http)
    - [equatable](https://pub.dev/packages/equatable)
    - [geolocator](https://pub.dev/packages/geolocator)

- #### UI packages:
    - [flutter_blurhash](https://pub.dev/packages/flutter_blurhash)
    - [intro_slider](https://pub.dev/packages/intro_slider)
    - [responsive_builder](https://pub.dev/packages/responsive_builder)
    - [animations](https://pub.dev/packages/animations)

## UI inspirations
- <https://material.io/design/material-studies/crane.html>
- []()

## Related recommended resources
- [Amadeus for Developers API Overview](https://github.com/amadeus4dev/hackathon-starter/blob/master/cheatsheets/amadeus4dev.pdf)
- [Amadeus Self-Service API](https://developers.amadeus.com/self-service)
- [Great YouTube channel about the BLoC Architecture](https://www.youtube.com/channel/UC5PYcSe3to4mtm3SPCUmjvw)
- [bloc library docs](https://bloclibrary.dev/#/)
- [Freezed ❄ – Data Class & Union in One Dart Package - by Reso Coder](https://resocoder.com/2020/02/11/freezed-data-class-union-in-one-dart-package/#t-1600693077177)

## Contribution
The app is still in the development process and isn't sustainable for contributions yet.

~~If you wish to contribute, file an issue with an appropriate tag or propose a PR. If it is a breaking change, please create an issue first.~~
