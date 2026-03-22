program multiplewindows;
{
========================================================================
 Simple multi-window example
 Copyright (c) Camilla Löwy <elmindreda@glfw.org>
 Convert to Pascal by Jorge Turiel

 This software is provided 'as-is', without any express or implied
 warranty. In no event will the authors be held liable for any damages
 arising from the use of this software.

 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it
 freely, subject to the following restrictions:

 1. The origin of this software must not be misrepresented; you must not
    claim that you wrote the original software. If you use this software
    in a product, an acknowledgment in the product documentation would
    be appreciated but is not required.

 2. Altered source versions must be plainly marked as such, and must not
    be misrepresented as being the original software.

 3. This notice may not be removed or altered from any source
    distribution.

========================================================================
}

uses
  glfw,
  dglOpenGL;

type
  TColor = record
    r, g, b: single;
  end;

const
  colors: array [0..3] of TColor = (
    (r: 0.95; g: 0.32; b: 0.11),
    (r: 0.50; g: 0.80; b: 0.16),
    (r: 0.0; g: 0.68; b: 0.94),
    (r: 0.98; g: 0.74; b: 0.04)
    );

var
  Description: PPChar;
  i, e: integer;
  xpos, ypos, Width, Height, size: GLFW_INT;
  Windows: array [0..3] of pGLFWwindow;

begin
  if glfwInit = GLFW_FALSE then
  begin
    Description := nil;
    glfwGetError(Description);
    e := 0;
    while Description[e] <> nil do
    begin
      Writeln(Description[e]);
      e := e + 1;
    end;
    Halt(1);
  end;
  glfwWindowHint(GLFW_DECORATED, GLFW_FALSE);
  glfwGetMonitorWorkarea(glfwGetPrimaryMonitor(), xpos, ypos, Width, Height);
  for I := 0 to 3 do
  begin
    size := Height div 5;
     glfwDefaultWindowHints;
    if i > 0 then
    begin

      glfwWindowHint(GLFW_FOCUS_ON_SHOW, GLFW_FALSE);
    end;

    glfwWindowHint(GLFW_POSITION_X, xpos + size * (1 + (I and 1)));
    glfwWindowHint(GLFW_POSITION_Y, ypos + size * (1 + (I shr 1)));
    Windows[I] := glfwCreateWindow(size, size, 'Multiple example windows', nil, nil);

    if Windows[I] = nil then
    begin
      Description := nil;
      glfwGetError(Description);
      e := 0;
      while Description[e] <> nil do
      begin
        Writeln(Description[I]);
        e := e + 1;
      end;
      Halt(1);
    end;
    glfwSetInputMode(Windows[i], GLFW_STICKY_KEYS, GLFW_TRUE);
    glfwMakeContextCurrent(Windows[i]);
    if I = 0 then      //Load DLL one time!
    begin
      // From dglOpenGL
      if not InitOpenGL() then
      begin
        Writeln('Fail to init Opengl');
        Halt(1);
      end;
    end;
    ReadExtensions;
   // ReadImplementationProperties;
    glClearColor(COLORS[i].r, COLORS[i].g, COLORS[i].b, 1.0);

  end;


  repeat
    for I := 0 to 3 do
    begin
      glfwMakeContextCurrent(Windows[i]);
      glClear(GL_COLOR_BUFFER_BIT);
      glfwSwapBuffers(Windows[I]);
      if (glfwWindowShouldClose(Windows[i]) = GLFW_TRUE) or
        (glfwGetKey(Windows[i], GLFW_KEY_ESCAPE) = GLFW_PRESS) then
      begin
        glfwTerminate;
        halt(0);
      end;
    end;
    glfwWaitEvents;
  until False;

end.
