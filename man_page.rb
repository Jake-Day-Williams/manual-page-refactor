def command_menu
  commands = ["cp","mv","cd","ls"]
      
  puts "-----COMMAND LINE-----"
      
  num = 1 
  commands.each do |i| 
    puts "#{num.to_s}: #{i}"
    num += 1 
  end
  
  puts "*****MAKE A SELECTION*****"

  com_select = gets

  case com_select.to_i
    when 1
      puts `man cp`
    when 2 
      puts `man mv`
    when 3
      puts `man cd`
    when 4
      puts `man ls`
    else
      puts "---ERROR UNKNOWN SELECTION---"
  end
end
  
def main_menu

  continue = true
  while continue

    puts "-----CHEATSHEET-----"
    puts "1: Command Line"
    puts "2: Search"
    puts "3: Exit"
    puts "*****Make a selection*****"

  selection = gets.to_i

    case selection
      when 1
        command_menu
      when 2
        print "What Command Are You Looking For?:"
        search_term = gets.strip
        puts `man #{search_term}`
      when 3 
        continue = false
      else 
        puts "!!!YOU HAD ONE JOB. TRY AGAIN!!!"
    end
  end
end

main_menu