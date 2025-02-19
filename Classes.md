Javascript Classes


* **Constructors** - used to initialize / instantiate a class
* **this** - keyword used to access the current object
* **Instance Methods** - methods that are called on an instance of a class (these classes can only be called on instances of the class)
* **Static Methods** - methods that are called on the class itself 

```js
class <className>{
  constructor(<parameters>){
    this.<property> = <value>;
  }

  <instanceMethod>(<parameters>){
    //can only be called by instances of the class
  }

  <staticMethod>(<parameters>){
    //can only be called with the className
  }
}
``` 
* **new** - keyword used to create a new instance of a class

```js
let obj = new <className>(<parameters>);
```


