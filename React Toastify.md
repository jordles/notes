`ToastContainer` is a React component provided by the `react-toastify` library that is used to display toast notifications in a React application. Toast notifications are small, non-intrusive messages that appear on the screen to inform users about various events, such as successful actions, errors, or warnings.

`toast()` is a function provided by the `react-toastify` library that is used to create and display toast notifications. You can call this function with a message and optional configuration options to show a toast notification. `ToastContainer` listens for these event calls and renders the corresponding toast messages on the screen.

The `ToastContainer` component must be included in your React component tree, typically at the root level of your application, to ensure that toast notifications can be displayed. You can customize the appearance and behavior of the `ToastContainer` using various props.

ToastContainer

| Prop              | Type                   | Default   | Description                                                                                         |
| ----------------- | ---------------------- | --------- | --------------------------------------------------------------------------------------------------- |
| position          | string                 | top-right | One of top-right, top-center, top-left, bottom-right, bottom-center, bottom-left                    |
| autoClose         | false or number        | 5000      | Delay in ms to close the toast. If set to false, the notification need to be closed manually        |
| closeButton       | React Element or false | -         | A React Component to replace the default close button or false to hide the button                   |
| transition        | function               | -         | A reference to a valid react-transition-group/Transition component                                  |
| hideProgressBar   | bool                   | false     | Display or not the progress bar below the toast(remaining time)                                     |
| pauseOnHover      | bool                   | true      | Keep the timer running or not on hover                                                              |
| rtl               | bool                   | false     | Support right to left content                                                                       |
| closeOnClick      | bool                   | true      | Dismiss toast on click                                                                              |
| newestOnTop       | bool                   | false     | Display newest toast on top                                                                         |
| className         | string                 | object    | Add optional classes to the container                                                               |
| style             | object                 | -         | Add optional inline style to the container                                                          |
| toastClassName    | string                 | object    | Add optional classes to the toast                                                                   |
| bodyClassName     | string                 | object    | Add optional classes to the toast body                                                              |
| progressClassName | string                 | object    | Add optional classes to the progress bar                                                            |
| draggable         | bool                   | true      | Allow toast to be draggable                                                                         |
| draggablePercent  | number                 | 80        | The percentage of the toast's width it takes for a drag to dismiss a toast(value between 0 and 100) |

`toast(content, options)`

Options is an optional object to override the `ToastContainer` props for this specific toast.

| Option            | Type                   | Default   | Description                                                                                                                               |
| ----------------- | ---------------------- | --------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| type              | string                 | default   | Kind of notification. One of "default", "success", "info", "warning", "error". You can use toast.TYPE.SUCCESS and so on to avoid any typo |
| onOpen            | function               | -         | Called inside componentDidMount                                                                                                           |
| onClose           | function               | -         | Called inside componentWillUnmount                                                                                                        |
| autoClose         | false or number        | 5000      | Delay in ms to close the toast. If set to false, the notification need to be closed manually                                              |
| closeButton       | React Element or false | -         | A React Component to replace the default close button or false to hide the button                                                         |
| transition        | function               | -         | A reference to a valid react-transition-group/Transition component                                                                        |
| closeOnClick      | bool                   | true      | Dismiss toast on click                                                                                                                    |
| hideProgressBar   | bool                   | false     | Display or not the progress bar below the toast(remaining time)                                                                           |
| position          | string                 | top-right | One of top-right, top-center, top-left, bottom-right, bottom-center, bottom-left                                                          |
| pauseOnHover      | bool                   | true      | Keep the timer running or not on hover                                                                                                    |
| className         | string                 | object    | Add optional classes to the toast                                                                                                         |
| bodyClassName     | string                 | object    | Add optional classes to the toast body                                                                                                    |
| progressClassName | string                 | object    | Add optional classes to the progress bar                                                                                                  |
| draggable         | bool                   | true      | Allow toast to be draggable                                                                                                               |
| draggablePercent  | number                 | 80        | The percentage of the toast's width it takes for a drag to dismiss a toast(value between 0 and 100)                                       |
| render            | string/element         | -         | String or React element, only available when calling toast.update                                                                         |
