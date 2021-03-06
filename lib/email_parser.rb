require 'pry'

# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser

  attr_accessor :email_list

  def initialize(emails)
    @email_list = emails
  end

  def parse()
    arr_of_emails = email_list.split(/\,|\ /)
    arr_of_emails.delete_if{ |s| s == "" }.uniq
  end

end
