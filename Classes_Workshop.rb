#
# - Define a Notebook class that allows the user to store and retrieve notes.
# - Define a formatter class that takes some text (as an argument to .new) and has several different methods that print the text, in different formats. Block caps, for example.
# - Define a Directory class that allows a user to store contacts and the retrieve them based on the initial letter of a contact’s name.

class Notebook
  def initialize
    @notes = {}
  end

  def store_notes(key,value)
    @notes.store(key,value)
  end

  def retrieve
    return @notes
    puts @notes
  end


end

def user_input
  note1 = Notebook.new
  loop do
    puts "Please type add to continue, retrieve or stop to exit: "
    user_input = gets.chomp
    if user_input == "Add"
      puts "Please enter the username: "
      username = gets.chomp
      puts "Please enter the note: "
      note = gets.chomp
      note1.store_notes(username,note)
    elsif user_input == "Stop"
      break
    elsif user_input == "Retrieve"
      note1.retrieve
      p note1
      break
    end
  end
end

user_input
  #ask the user for input for username
  #ask for the # NOTE:
  # store both these in the Notebook class


# class TodoList
#   def initialize
#     @todo_list = []
#   end
#
#   def add(string)
#     @todo_list << string
#   end
#
#   def print
#     @todo_list.each do |string|
#       puts "* #{string.text}"
#     end
#   end
# end
