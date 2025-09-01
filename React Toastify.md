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
| stacked           | bool                   | false     | When true, allows to stack multiple toasts on the same position                                     |
| closeOnClick      | bool                   | true      | Dismiss toast on click                                                                              |
| draggable         | bool                   | true      | Allow toast to be draggable                                                                         |

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

**Toast options supersede ToastContainer props**

We can override css variables

```css
Below the list of the css variables that are exposed by the library. :root {
	--toastify-color-light: #fff;
	--toastify-color-dark: #121212;
	--toastify-color-info: #3498db;
	--toastify-color-success: #07bc0c;
	--toastify-color-warning: #f1c40f;
	--toastify-color-error: hsl(6, 78%, 57%);
	--toastify-color-transparent: rgba(255, 255, 255, 0.7);

	--toastify-icon-color-info: var(--toastify-color-info);
	--toastify-icon-color-success: var(--toastify-color-success);
	--toastify-icon-color-warning: var(--toastify-color-warning);
	--toastify-icon-color-error: var(--toastify-color-error);

	--toastify-container-width: fit-content;
	--toastify-toast-width: 320px;
	--toastify-toast-offset: 16px;
	--toastify-toast-top: max(
		var(--toastify-toast-offset),
		env(safe-area-inset-top)
	);
	--toastify-toast-right: max(
		var(--toastify-toast-offset),
		env(safe-area-inset-right)
	);
	--toastify-toast-left: max(
		var(--toastify-toast-offset),
		env(safe-area-inset-left)
	);
	--toastify-toast-bottom: max(
		var(--toastify-toast-offset),
		env(safe-area-inset-bottom)
	);
	--toastify-toast-background: #fff;
	--toastify-toast-padding: 14px;
	--toastify-toast-min-height: 64px;
	--toastify-toast-max-height: 800px;
	--toastify-toast-bd-radius: 6px;
	--toastify-toast-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
	--toastify-font-family: sans-serif;
	--toastify-z-index: 9999;
	--toastify-text-color-light: #757575;
	--toastify-text-color-dark: #fff;

	/* Used only for colored theme */
	--toastify-text-color-info: #fff;
	--toastify-text-color-success: #fff;
	--toastify-text-color-warning: #fff;
	--toastify-text-color-error: #fff;

	--toastify-spinner-color: #616161;
	--toastify-spinner-color-empty-area: #e0e0e0;
	--toastify-color-progress-light: linear-gradient(
		to right,
		#4cd964,
		#5ac8fa,
		#007aff,
		#34aadc,
		#5856d6,
		#ff2d55
	);
	--toastify-color-progress-dark: #bb86fc;
	--toastify-color-progress-info: var(--toastify-color-info);
	--toastify-color-progress-success: var(--toastify-color-success);
	--toastify-color-progress-warning: var(--toastify-color-warning);
	--toastify-color-progress-error: var(--toastify-color-error);
	/* used to control the opacity of the progress trail */
	--toastify-color-progress-bgo: 0.2;
}
```

Override existing css classes
If overriding the css variables and using your own component are not enough for you, you can override the existing CSS classes. Below, a list of the CSS classes used.

```css
/** Used to define container behavior: width, position: fixed etc... **/
.Toastify__toast-container {
}

/** Used to define the position of the ToastContainer **/
.Toastify__toast-container--top-left {
}
.Toastify__toast-container--top-center {
}
.Toastify__toast-container--top-right {
}
.Toastify__toast-container--bottom-left {
}
.Toastify__toast-container--bottom-center {
}
.Toastify__toast-container--bottom-right {
}

/** Classes for the displayed toast **/
.Toastify__toast {
}
.Toastify__toast--rtl {
}

/** Used to position the icon **/
.Toastify__toast-icon {
}

/** handle the notification color and the text color based on the theme **/
.Toastify__toast-theme--dark {
}
.Toastify__toast-theme--light {
}
.Toastify__toast-theme--colored.Toastify__toast--default {
}
.Toastify__toast-theme--colored.Toastify__toast--info {
}
.Toastify__toast-theme--colored.Toastify__toast--success {
}
.Toastify__toast-theme--colored.Toastify__toast--warning {
}
.Toastify__toast-theme--colored.Toastify__toast--error {
}

.Toastify__progress-bar {
}
.Toastify__progress-bar--rtl {
}
.Toastify__progress-bar-theme--light {
}
.Toastify__progress-bar-theme--dark {
}
.Toastify__progress-bar--info {
}
.Toastify__progress-bar--success {
}
.Toastify__progress-bar--warning {
}
.Toastify__progress-bar--error {
}
/** colored notifications share the same progress bar color **/
.Toastify__progress-bar-theme--colored.Toastify__progress-bar--info,
.Toastify__progress-bar-theme--colored.Toastify__progress-bar--success,
.Toastify__progress-bar-theme--colored.Toastify__progress-bar--warning,
.Toastify__progress-bar-theme--colored.Toastify__progress-bar--error {
}

/** Classes for the close button. Better use your own closeButton **/
.Toastify__close-button {
}
.Toastify__close-button--default {
}
.Toastify__close-button > svg {
}
.Toastify__close-button:hover,
.Toastify__close-button:focus {
}
```

# Custom Components

When you provide a component, four props are injected into your component.
```
closeToast
data
isPaused
toastProps
```
