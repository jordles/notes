# OOP (Object Oriented Programming)

Javascript's OOP model is based on prototypes.  
Prototypes are used to add properties and methods to an object.  
Any javascript object can link (known as reference) to another object through the prototype chain.

`Object.create(myPrototypeObject)` is used to create an object that links to a prototype object.
If a property is not found on the object, it will look for the property on the prototype object. If it is not found on the prototype object, it will look for the property on the prototype's prototype object and so on up the prototype chain.

There are 3 ways to create objects in Javascript:

1. Object Literal (Simple Object)
2. Constructor Function 
3. Class

<details>
<summary>Object Literals</summary>
By definition, an object is object-oriented, but it lacks all the core features 

```js
const person = {
  name: "Alice",
  greet() {
    console.log(`Hello, my name is ${this.name}`);
  }
};

person.greet(); // Hello, my name is Alice
```

</details>

<details>
<summary>Constructor Functions</summary>

Our way of writing javascript objects is through __constructor functions__ instead of classes which use class functions.

</details>


**HERES WHERE CLASSES COME INTO PLAY** as they provide a syntax sugar for creating objects with shared properties and methods.

## OOP Principles (PAIN)
### Polymorphism, Abstraction, Inheritance, E(n)capsulation

✅ [Encapsulation](#encapsulation) is the hiding  
✅ [Abstraction](#abstraction) is the showing  
✅ [Inheritance](#inheritance) is the reuse   
✅ [Polymorphism](#polymorphism) is the many forms  

[More Examples](#examples)

## Encapsulation

Encapsulation is the ability for an object to decide what information is shown to the outside world and what information it keeps to itself. It encourages methods that specify how certain properties are accessed or modified.

Private variables (limited and controlled access) and methods like **getters** and **setters** are the implementation of encapsulation.

There are two ways to implement private variables:

1. `#` syntax is enforced by the compiler
2. `_` syntax is not enforced by the compiler, but is recognized by devs as private

`static` keyword is used to create static methods. Static methods are methods that are called on the class itself, not on instances of the class.

**Getters** and **Setters** are used to access and modify private variables in a controlled way. For private methods, use public methods to expose them through abstraction.

Use a **getter** when:

- You want to expose a value as a property.
- The user shouldn’t need to know that logic is being run under the hood.
- The result feels like data, <ins>not an action</ins>.

Private ensure:
1. Prevent external access — users shouldn't rely on its behavior.
2. Allow internal changes — you can modify or replace the method's logic without affecting the rest of your codebase.
3. Protect integrity - you can ensure that the state of the object is consistent.

<details>
<summary>Encapsulation Examples</summary>

```js
class BankAccount {
	#balance; // Private field encapsulating balance

	constructor(owner, balance) {
		this.owner = owner;
		this.#balance = balance;
	}

	deposit(amount) {
		if (amount > 0) this.#balance += amount;
	}

	getBalance() {
		return this.#balance;
	}
}

const account = new BankAccount("Alice", 1000);
account.deposit(500);
console.log(account.getBalance()); // 1500
// account.#balance = 0; ❌ Error: Private field
// console.log(account.#balance); Error: Private field
```
</details>

## Abstraction

Abstraction is about hiding complexity and exposing a clean, usable interface. It is a way of representing only the important parts of an object and hiding the less important parts.  
<ins>This means abstraction requires encapsulation for it to expose to the user, a clean interface, by hiding complexity first.</ins>

Abstraction is achieved through:

| Technique                     | How It Contributes to Abstraction                                            |
| ----------------------------- | ---------------------------------------------------------------------------- |
| Private fields/methods (#)    | Hide implementation details from outside the class.                          |
| Getters/Setters               | Control access to private data—only expose what's needed, maybe validate it. |
| Public methods                | Expose a simplified and meaningful interface.                                |
| Avoiding unnecessary exposure | Don't show internal workings like helper methods unless needed.              |

<details>
<summary>Abstraction Examples</summary>

```js
class CoffeeMachine {
  #powerOn() { //encapsulating the power on process
    console.log("Warming up...");
  }

  #brew() { // encapsulating the brewing process
    console.log("Brewing coffee...");
  }

  makeCoffee() {
    this.#powerOn();
    this.#brew();
    console.log("Here’s your coffee ☕");
  }
}

const machine = new CoffeeMachine();
machine.makeCoffee();

// Here, abstraction hides the detailed process of powering on and brewing, 
// exposing only the high-level makeCoffee() method that simplifies the interface.
```
</details>

## Inheritance

Inheritance is the ability for a class to inherit properties and methods from another class. It allows you to reuse code and create a hierarchy of classes. 

There is also a prototype-based inheritance called **prototypal inheritance** not based on javascript classes, and its actually how javascript objects inherit properties and methods from other objects.

Parent Classes are called __Superclasses__ and Child Classes are called __Subclasses__.

`extends` keyword is used to inherit properties and methods from a parent class.  
`super` keyword calls on the parent class to access its methods and properties. Its another way to reuse code, so that you don't have to repeat yourself.

There are two ways to use `super`:
- **`super()`** calls the constructor of the parent class.
- **`super.method()`** calls a method of the parent class

<details>
<summary>Inheritance Examples</summary>

```js
class Animal {
  constructor(name) {
    this.name = name;
  }

  speak() {
    return `${this.name} makes a noise.`;
  }
}

class Dog extends Animal {
  constructor(name, breed) {
    super(name); // ✅ Calls the Animal constructor with the name
    this.breed = breed;
  }

  speak() {
    // ✅ Calls the parent class speak() method
    const parentMessage = super.speak(); 
    return `${parentMessage} ${this.name} barks.`;
  }
}
```

</details>

### Examples

```js
// Base Class: Vehicle (Encapsulation, Abstraction)
class Vehicle {
	#fuelLevel; // Encapsulating fuel level

	constructor(fuelLevel = 0) {
		this.#fuelLevel = fuelLevel;
	}

	// Private method to refill the fuel (Encapsulation)
	#refill(amount) {
		if (amount > 0) {
			this.#fuelLevel += amount;
			console.log(`Refilled ${amount} liters.`);
		}
	}

	// Abstraction: Refuel is abstracted, users only interact with it via public method
	refuel(amount) {
		this.#refill(amount); // Hiding the complexity of refueling
	}

	// Method to check fuel (Abstraction: showing essential details only)
	getFuelLevel() {
		return this.#fuelLevel;
	}

	// Start method, to be overridden in subclasses (Polymorphism)
	start() {
		console.log("Vehicle is starting...");
	}
}

// Derived Class: Car (Inheritance, Polymorphism)
class Car extends Vehicle {
	constructor(fuelLevel) {
		super(fuelLevel); // Inheriting from Vehicle
	}

	start() {
		console.log("Car is starting... Vroom Vroom!");
	}
}

// Derived Class: Bike (Inheritance, Polymorphism)
class Bike extends Vehicle {
	constructor(fuelLevel) {
		super(fuelLevel); // Inheriting from Vehicle
	}

	start() {
		console.log("Bike is starting... Vroom!");
	}
}

// Example of Usage
const car = new Car(10);
car.start(); // Car is starting... Vroom Vroom!
car.refuel(5);
console.log("Car fuel level:", car.getFuelLevel()); // Car fuel level: 15

const bike = new Bike(5);
bike.start(); // Bike is starting... Vroom!
bike.refuel(2);
console.log("Bike fuel level:", bike.getFuelLevel()); // Bike fuel level: 7
```
