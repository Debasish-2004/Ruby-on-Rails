class Expense
  attr_reader :category, :amount, :description

  def initialize(category, amount, description)
    @category = category
    @amount = amount.to_f
    @description = description
  end

  def display
    puts "Category: #{@category} | Amount: ₹#{@amount} | Description: #{@description}"
  end
end

class ExpenseTracker
  def initialize
    @expenses = []
  end

  def add_expense(category, amount, description)
    expense = Expense.new(category, amount, description)
    @expenses << expense
    puts "✅ Expense added successfully!"
  end

  def show_expenses
    if @expenses.empty?
      puts "No expenses recorded yet."
    else
      puts "\n--- All Expenses ---"
      @expenses.each { |e| e.display }
    end
  end

  def total_expense
    total = @expenses.sum(&:amount)
    puts "\n💰 Total Expense: ₹#{total}"
  end

  def menu
    loop do
      puts "\n========== Expense Tracker =========="
      puts "1. Add Expense"
      puts "2. View All Expenses"
      puts "3. View Total"
      puts "4. Exit"
      print "Enter choice: "
      choice = gets.chomp.to_i

      case choice
      when 1
        print "Enter category: "
        category = gets.chomp
        print "Enter amount: "
        amount = gets.chomp
        print "Enter description: "
        description = gets.chomp
        add_expense(category, amount, description)
      when 2
        show_expenses
      when 3
        total_expense
      when 4
        puts "👋 Exiting... Goodbye!"
        break
      else
        puts "❌ Invalid choice. Try again."
      end
    end
  end
end

# Start the tracker
tracker = ExpenseTracker.new
tracker.menu
