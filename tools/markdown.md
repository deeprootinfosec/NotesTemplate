# Markdown
------------------------------------------------------------------
------------------------------------------------------------------
## **Basic Syntax:**  

Markdown uses special characters to augment text. Put * on either side of your text to *italicize* and ** to make it **bold**. You can add blockquotes with >
> Like this!  
> Or this!

You can get double spaced line breaks by skipping a line and single spaced line breaks by adding two spaces at the end of your sentence.  

Ordered lists are super simple:  
1. One
2. Two
3. Three 
 
Unordered lists are just as easy - :
- One
- Two 
- Three

Add horizontal lines with *** or ---
*** 
---

Add code blocks with ```language ```
```python
#Code goes here!
print("Hello!\n")

def function():
    print("World!")
    return
function()
```

## **Extras:**  
You can embed links with [link text] followed by a link in (parentheses).  
[Link to Example.com](https://example.com)

Using the same logic you can imbed images with ![Alt text] and (link or path to image)  
![Link to example image within the attachments folder.](../Attachments/example.jpg)

You can also create links to your headers in a tabe of contents. All you need to do is reference your header with [link text] and (#header-text) in all lower case with dashes instead of spaces. Here is a link to the top of the page:

[Back to Top](#markdown-tips-and-tricks)

The last thing I want to touch on before I leave you to write your own Markdown is CSS. There are two ways you can add CSS:

### Span tags:
<span style="color:red;"> Red text! </span>

### Style blocks:

<style> 
orange {color: #FFA348}
blue {color: #62A0EA}
green {color: #8FF0A4}
yellow {color: #F8E45C}
purple {color: #DC8ADD}
red {color: #F65151}
</style>
 