defmodule HelloWorld do
  @spec hello(String.t) :: String.t
  def hello(name \\  nil) do
    if name do
      "Hello, #{name}!"
    else
      "Hello, World!"
    end
  end
end
