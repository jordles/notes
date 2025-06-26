# React

https://academind.com/courses


__Declarative__ approach to building UIs: Use JSX to describe what the UI should look like. Its about what you want to achieve, instead of how to do it. Define the target UI state(s) and let React handle the details.
  - Declarative programming in React allows developers to focus on the logic of the program, rather than the implementation details. 
  - This makes it easier to create responsive, reusable, and testable components. 
  - It also allows for rapid development, since changes can be made without needing to rewrite the entire application.

__Imperative__ approach to building UIs: Use JavaScript to describe what the UI should look like. Its about how to do it. 

Examples

<details>
<summary>imperative (js)</summary>

```js
<ul id="user-list"></ul>
<script>
  const users = ['Alice', 'Bob', 'Charlie'];
  const ul = document.getElementById('user-list');

  // Step-by-step instructions
  users.forEach(user => {
    const li = document.createElement('li');
    li.textContent = user;
    ul.appendChild(li);
  });
</script>
```
You explicitly instruct how to build the DOM:

1. Get the element.
1. Create a child.
1. Set text.
1. Append it.

```js
ul.innerHTML = ''; // clear
users.forEach(user => {
  const li = document.createElement('li');
  li.textContent = user;
  ul.appendChild(li);
});
```

You must manually remove old elements, and rebuild the DOM

</details>

<details>
<summary>declarative (jsx)</summary>

```jsx
function UserList() {
  const users = ['Alice', 'Bob', 'Charlie'];

  // Describe what the UI should look like
  return (
    <ul>
      {users.map(user => <li key={user}>{user}</li>)}
    </ul>
  );
}
```

You describe the final UI you want.

React handles:

1. Creating the DOM nodes.
1. Updating only what’s necessary if the data changes.

```jsx
const [users, setUsers] = useState(['Alice', 'Bob']);

useEffect(() => {
  setUsers(['Alice', 'Bob', 'Charlie']); // React re-renders automatically
}, []);
```

You just update the users state, and React re-renders.

</details>

![alt text](media/js-environments.png)