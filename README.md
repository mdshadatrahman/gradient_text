# Gradient Text

Create eye-catching and vibrant text with ease using the Flutter Gradient Text package! This versatile package empowers Flutter developers to integrate gradient effects seamlessly into their applications. Whether you're looking to add a subtle touch or make a bold statement, the Flutter Gradient Text package offers a wide range of gradient types to suit your design needs.

## Key Features
- **Easy Integration:** Quickly integrate gradient text into your Flutter app with just a few lines of code.
- **Customizable:** Tailor the gradient to your liking by choosing from a variety of gradient types and adjusting colors, direction, and more.
- **Performance-Optimized:** Enjoy smooth rendering and performance, ensuring a seamless user experience.
- **Versatile Usage:** Perfect for headlines, banners, buttons, and any other text elements that need a pop of color.

Get ready to elevate your app's visual appeal with the Flutter Gradient Text package. Explore the endless possibilities of gradient text and captivate your users in style!



## Usage

```dart
    GradientText(
    	text: 'LinearGradient text',
    	style: Theme.of(context).textTheme.headlineLarge,
    ),

    GradientText(
        text: 'RadialGradient text',
        gradient: const RadialGradient(
            colors: [
                Color(0xFF9747FF),
            	Color(0xFF275AFF),
                Color(0xFF56B8FF),
            ],
        ),
        style: Theme.of(context).textTheme.headlineLarge,
    ),
           
	GradientText(
        text: 'SweepGradient text',
        gradient: const SweepGradient(
        	colors: [
            	Color(0xFF9747FF),
            	Color(0xFF275AFF),
            	Color(0xFF56B8FF),
        	],
		),
        style: Theme.of(context).textTheme.headlineLarge,
    ),
```
