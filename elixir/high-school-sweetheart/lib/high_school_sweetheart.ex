defmodule HighSchoolSweetheart do
  def first_letter(name), do: name |> String.trim() |> String.first()

  def initial(name) do
    name
    |> HighSchoolSweetheart.first_letter()
    |> String.capitalize()
    |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first, last] = String.split(full_name)
    "#{initial(first)} #{initial(last)}"
  end

  def pair(full_name1, full_name2) do
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """
  end
end
