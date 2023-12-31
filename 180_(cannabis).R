# Find pattern in "https://www.180.com.uy/busqueda&P=1&TXT=cannabis"
# Number after "P=" changes each time, adding 1, until the website shows no more results
# Website stops showing results at "https://www.180.com.uy/busqueda&P=33&TXT=cannabis"
# Enter in ChatGPT the following prompt:
# "Give me a list of URLs where the base is this one: "https://www.180.com.uy/busqueda&P=2&TXT=cannabis", but what changes is the number after "P=". The list should be with the numbers from 1 to 33, so there should be a list of 33 different URLs"
# Copy and paste the list into Google Sheets
# Use "=ArrayFormula(TRANSPOSE(A2:A34))" to get the list of URLs vertically, into rows instead of columns
# Paste under the first URL this XPath: "//a[@class='linkArticulo']/@href"
# Drag to de left until the text appears under each URL
# Under that text, use the formula "=IMPORTXML(cell with URL,cell with XPath)"
# Drag the formula to the left until all URLs are used
# Copy and paste only values each column in top of each other, so as not to saturate Google Sheets
# In a new sheet, copy and paste all the URLs of the news that contain the word "cannabis" in "https://www.180.com.uy"
# Using the "data cleaning" automatic function, delete repeated titles
# In the next column write the XPath "//h3"
# Drag it down and copy it all throughout the column
# Use the formula "=IMPORTXML(cell with URL,cell with //h3)" in the next column and drag it down to obtain all the news' titles
# Repeat with the XPath "//p[@class='publicado']" to obtain all the dates of the news
# When possible, copy and paste only values in the same place to avoid saturating Google Sheets
