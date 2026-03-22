

# GLFW Headers for Free Pascal and Lazarus

[![License](https://img.shields.io/badge/license-Zlib-blue.svg)](https://www.glfw.org/license.html)
[![GLFW Version](https://img.shields.io/badge/GLFW-3.4-green.svg)](https://www.glfw.org/)

This repository provides the **Free Pascal / Lazarus headers** required to interface with the [GLFW](http://www.glfw.org/) library. 

---

## 🧩 What is GLFW?

> *(The following description is sourced from the official [GLFW website](http://www.glfw.org/):)*

**GLFW** is an **Open Source, multi-platform library** designed for OpenGL, OpenGL ES, and Vulkan development on the desktop. It offers a simple API for creating windows, contexts, and surfaces, as well as for receiving input and events.

GLFW is written in **C** and provides native support for **Windows, macOS,** and many Unix-like systems using the X Window System, such as **Linux** and **FreeBSD.**


---

## 🚀 Quick Start

1. **Download:** Get the `glfw.pas` unit from the folder corresponding to your desired version (e.g., `GLFW34`).
2. **Library Files:** - **Windows:** Place `glfw3_32.dll` (32-bit) or `glfw3_64.dll` (64-bit) in your project folder or system path.
   - **Linux/macOS:** Ensure the native GLFW library is installed via your package manager.
3. **Integration:** Add the unit to your `uses` clause:

```pascal
uses
  glfw;
```


## 📁 Examples Included

Inside the `Examples` folder, you will find:
* **`multiplewindows.pas`**: A complete port of the official GLFW `windows.c` example, demonstrating how to manage 4 independent windows with different background colors.

## 🎨 Drawing with OpenGL

GLFW handles window creation and input, but it does **not** include OpenGL functions (like `glClear`, `glBegin`, etc.). To draw inside your windows, you need an OpenGL loader.

We recommend using [dglOpenGL.pas](https://github.com/SaschaWillems/dglOpenGL) alongside these headers:

```pascal
uses
  glfw, dglOpenGL;

begin
  // After glfwMakeContextCurrent(window)
  if not InitOpenGL then Halt;
  ReadExtensions;
  
  // Now you can use OpenGL commands
  glClearColor(0.1, 0.2, 0.3, 1.0);
end;

## 🤝 Credits

* **GLFW Library:** [Official Team](https://www.glfw.org/)
* **Pascal Headers:** Jorge Turiel (Blueicaro)
* **Testing & Examples:** Jorge Turiel (Blueicaro)

---

## ⚖️ License

These headers are distributed under the **Zlib License**, the same license used by the official GLFW project. See the [LICENSE](LICENSE) file for more details.