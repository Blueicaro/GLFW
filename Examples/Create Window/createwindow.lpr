program createwindow;

uses
  glfw,gl;

var

  window: pGLFWwindow;
begin
  // Initialize the library
  if glfwInit = GLFW_FALSE then
  begin
    Writeln('Can not init GLFW');
    Halt(1);
  end;

  //Create a windowed mode window and its OpenGL context

  window := glfwCreateWindow(640, 480, 'Hello world', nil, nil);

  if window = nil then
  begin
    Writeln('Can not create window');
    glfwTerminate;
    halt(1);
  end;
  // Make the window's context current
  glfwMakeContextCurrent(window);

  while  glfwWindowShouldClose(window) = GLFW_FALSE do
  begin
    // Render here
    glClear(GL_COLOR_BUFFER_BIT);

    // Swap front and back buffers 7
    glfwSwapBuffers(window);

    //Poll for and process events
    glfwPollEvents();
  end;
   glfwTerminate;

end.
