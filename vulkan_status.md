# Using Vulkan with GLFW in Pascal

This guide explains how to use the Vulkan-related functions included in glfw.pas. To make this code work, you must include a unit that defines Vulkan data types (such as VkInstance, VkSurfaceKHR, etc.).

- [Using Vulkan with GLFW in Pascal](#using-vulkan-with-glfw-in-pascal)
  - [Checking for Support](#checking-for-support)
  - [Required Extensions](#required-extensions)
  - [Creating the Surface](#creating-the-surface)
  - [Important Notes](#important-notes)


## Checking for Support

Before attempting to create any Vulkan resources, you must verify if the system (hardware + driver) supports it:

```pascal
if glfwVulkanSupported = GLFW_TRUE then
  Writeln('Vulkan is available on this system.')
else
  Writeln('Vulkan is not supported.');

```
## Required Extensions

Vulkan is an explicit API. To create an instance that can communicate with a GLFW window, you need to know which extensions the operating system requires:

```pascal
var
  Count: uint32_t;
  Extensions: PPChar;
begin
  // Extensions is a pointer to an array of strings
  Extensions := glfwGetRequiredInstanceExtensions(@Count);
  // These extension names must be passed to vkCreateInstance
end;
```

## Creating the Surface

This is the most critical step. GLFW abstracts the platform-specific complexity (Win32, X11, Wayland, Cocoa) to create the rendering surface:

```pascal
var
  Result: VkResult;
  Surface: VkSurfaceKHR;
begin
  // 'Instance' is your previously created VkInstance
  // 'Window' is the PGLFWwindow created with GLFW
  Result := glfwCreateWindowSurface(Instance, Window, nil, @Surface);

  if Result = VK_SUCCESS then
    Writeln('Vulkan surface created successfully.')
  else
    Writeln('Failed to create Vulkan surface.');
end;
```

## Important Notes

No OpenGL Context: When creating a window for Vulkan, remember to disable the default OpenGL context creation to save resources:

```pascal
glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
Window := glfwCreateWindow(Width, Height, 'Vulkan Window', nil, nil);
````

Memory Management: GLFW does not automatically destroy the Vulkan surface. You must call vkDestroySurfaceKHR (using your Vulkan loader) before closing the application.

Recommended Vulkan Loaders for Pascal

To obtain the necessary type definitions (VkInstance, etc.), you can use:

[PasVulkan](https://github.com/BeRo1985/pasvulkan): The most complete and modern framework for Vulkan in Pascal.

