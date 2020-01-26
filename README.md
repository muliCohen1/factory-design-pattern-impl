# Factory - Design Pattern Implementation
## This simple Polygon program serves as a very basic, easy to follow example of the Factory Design Pattern.
The Factory pattern is useful in situations where the type of object that needs to be generated is not known when the program is written, but only on runtime. This simple PHP program serves as an easy to follow implementation - It will either create a Rectangle or a Square object and calculate its' perimeter - depending on the (shape's) perimeter the user is choosing to guess. Being a decesndent of an abstract Shape class, creating new and different Shape decesndent classes is really straightforward. You will find the Core implementation of the pattern on line 15 of the api.php file.