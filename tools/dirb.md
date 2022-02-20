# Dirb
------------------------------------------------------------------
------------------------------------------------------------------
## **Basic Syntax:**  
```dirb http://example.com```

## **Full Syntax:**  
```dirb http://example.com/ /usr/share/dirb/wordlists/small.txt -X .php,.htm,.html,.js,.css,.etc -r -z 100 -o dirb_example.txt -N 301,302```

## **Syntax Breakdown:**  
dirb - calls the dirb command

http://example.com/ - the url you want to test

/usr/share/wordlists/dirb/small.txt - wordlist to check for

-X .php,.htm,.html,.js,.css,.etc - search for these file extensions

-r - don't search recursively 

-z 100 - adds 100 millisecond delay to each request

-o dirb_example.txt - output file

-N 301,302 - ignore response codes of 301,302