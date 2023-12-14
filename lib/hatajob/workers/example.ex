defmodule Hatajob.Workers.Example do

  def hata do

%{id: 1,name: "business", age: 11}
|> Hatajob.Workers.Basic.new()
|> Oban.insert()

  end
end
