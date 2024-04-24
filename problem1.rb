def extract_urls(text)
    
    url_pattern =  %r{(https?|ftp)://[\w\d\-.]+(\.[\w\d\-.]+)+([\w\d@:%_\+.~#?&//=]*)?}

    # Scan the text for URLs and output each one on a new line
    text.scan(url_pattern) do |url|
      puts url[0]  # Printing the full URL captured
    end
end

  
# Sample text with URLs to test the script's functionality
sample_text = "Visit our site at http://www.example.org for more
information. Check out our search page at
https://example.com/search?q=ruby+regex. Don’t forget to ftp our
resources at ftp://example.com/resources."
  
# Call the function with the sample text
extract_urls(sample_text)
  