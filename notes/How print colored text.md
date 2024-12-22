# Color Print Library for C

This C library provides an easy way to print colored text in your console output. You can use predefined macros to quickly change text color for different message types, such as `ERROR`, `SUCCESS`, `WARNING`, `INFO`, and `INPUT`. It helps in creating more readable and visually appealing terminal outputs for your programs. 🎨

## How to Print Text with Colors

- **ERROR**: Red 🔴
- **SUCCESS**: Green 🟢
- **WARNING**: Yellow 🟡
- **INFO**: Blue 🔵
- **INPUT**: Cyan 🟣
- **RESET**: Default ⚪

## How to Use

### 1. Include the color header

To get started, simply include the header file `color.h` in your program.

```c
#include <color.h>
```

### 2. Using Colored Text with `printf`

You can now use `printf()` to print messages with colors by wrapping your messages with the predefined color macros.

### Examples:

#### Display an **Error** message (Red):
```c
printf("%s%s%s", ERROR, "Error message", RESET);
```

#### Display a **Success** message (Green):
```c
printf("%s%s%s", SUCCESS, "Success message", RESET);
```

#### Display a **Warning** message (Yellow):
```c
printf("%s%s%s", WARNING, "Warning message", RESET);
```

#### Display an **Info** message (Blue):
```c
printf("%s%s%s", INFO, "Info message", RESET);
```

#### Display an **Input** message (Cyan):
```c
printf("%s%s%s", INPUT, "Input message", RESET);
```

#### Display a **Default** message (Reset color):
```c
printf("%s%s%s", RESET, "Reset color", RESET);
```

## Available Macros

Here’s a summary of all the available macros:

| Macro    | Color   | Purpose             |
|----------|---------|---------------------|
| `ERROR`  | Red     | Error message       |
| `SUCCESS`| Green   | Success message     |
| `WARNING`| Yellow  | Warning message     |
| `INFO`   | Blue    | Information message |
| `INPUT`  | Cyan    | Input message       |
| `RESET`  | Default | Reset terminal color|

## License

This project is open-source and available under the [MIT License](LICENSE). Enjoy using it! 😄

---

With this library, you can make your terminal output more dynamic and user-friendly! 🌈