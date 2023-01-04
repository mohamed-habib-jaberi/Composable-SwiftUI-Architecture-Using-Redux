# Composable SwiftUI Architecture Using Redux

This course has taken inspiration and ideas from several different resource. The list of resources is shown below:

SwiftUIFlux: https://github.com/Dimillian/SwiftUIFlux

Redux-like architecture with SwiftUI: Side Effects: https://danielbernal.co/redux-like-architecture-with-swiftui-middleware/

Redux-like state container in SwiftUI. Basics.: https://swiftwithmajid.com/2019/09/18/redux-like-state-container-in-swiftui/

third party ios libraries for redux archi : RESwift : https://github.com/ReSwift/ReSwift

# Redux Data Flow

![ReduxFlow](https://user-images.githubusercontent.com/36473665/210183455-9ae60456-16f1-4b68-9cf3-ec97c0210878.gif)

# Understanding Redux:

In this section, you will learn different components of the Redux design pattern. You will start by learning about the Redux store and how reducers can access and update the store. You will also learn about state and storing state in smaller slices of the global state. Next, you will learn about actions and how actions can be dispatched from the store and carry a payload. Finally, you will learn about middleware and how middleware can be used to perform an async request.



# Hello Redux

In this section, you will learn how to integrate Redux with SwiftUI application. You will build a small counter application and exercise all components of Redux including store, reducer, action and mapStateToProps.



# Combining Reducers - Multiple Reducers

In this section, you will learn how to combine multiple reducers into one root reducers. Dividing reducers helps you to clean code and not end up with one massive reducer.



# Middleware

In this section, you will learn how to implement a middleware. Middleware can be used to perform asynchronous requests and pass the result of the request to the reducer by dispatching an action.



# Movies App

In this section, you will learn how to build a complete Movies App using Redux Design Pattern with SwiftUI. You will learn how to implement middleware to consume a third party OMDB API. You will also learn how to display images and ratings using provided URLImage and RatingView views. You will also implement the details screen, which will allow you to fetch movie details.
