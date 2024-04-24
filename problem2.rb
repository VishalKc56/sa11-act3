def parse_invoices(invoice_data)
    
    invoice_pattern = /(\d{4}-\d{2}-\d{2}) - (\w+) - ([\w\s]+) - (\$\d+)/
    # Process each line and extract details
    invoice_data.each_line do |line|
      if line.match(invoice_pattern)
        puts "Date: #{$1}, Invoice Number: #{$2}, Client: #{$3}, Amount: #{$4}"
      end
    end
  end
  
  # Sample data with multiple invoices
  invoice_entries = <<-INVOICES
  2023-03-01 - INV001 - Acme Corp - $1000
  2023-03-02 - INV002 - Beta LLC - $2050
  2023-03-03 - INV003 - Gamma Inc - $3500
  INVOICES
  parse_invoices(invoice_entries)