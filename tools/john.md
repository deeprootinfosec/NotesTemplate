# John The Ripper
------------------------------------------------------------------
------------------------------------------------------------------
## **Basic Syntax:**  
```john passwords.txt```

## **Full Syntax:**  
```john --format=raw-sha1 --wordlist /usr/share/rockyou.txt ./sha1hash.txt```

## **Syntax Breakdown:**  

```john``` - calls john the ripper

```--format="$format"``` - specifies the hash type
- list formats with ```john --list=formats```
- identify hashes with ```hashid ./hash.txt```

```--wordlist=/path/to/wordlist.txt``` - specifies wordlist to compare hashes to

## **Extras:**

### **Custom Rules:**

John comes with a tin of custom rules already which you can list with this command:
```john --list=rules```

Rules use Regex and can be tailored to a password policy if you have one available. 

### **Cracking Password Protected Zip Files and SSH Keys:**

John comes packaged with some tools to convert password protected files into a crackable format. The ones we will be using in this demo are ssh2john and zip2john. 

**Note: Some of these utilities are stored in /usr/share/john/**

**Zip2John**  
```zip2john ./file.zip | tee ./outfile.txt```

OR

```zip2john ./file.zip > outfile.txt```

**Crack Zip Password**  
```john --wordlist=/usr/share/wordlists/rockyou.txt ./outfile.txt```

**ssh2john**  
```/usr/share/john/ssh2john.py ./id_rsa > outfile.txt```

**Crack SSH Key**  
```john --wordlist=/usr/share/wordlists/rockyou.txt ./outfile.txt```