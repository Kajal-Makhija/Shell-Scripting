# Problem1

## 1. Tenth Line

## 📄 Description

Given a text file `file.txt`, print **only the 10th line** of the file.

### Example

If `file.txt` contains:

```
Line 1
Line 2
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
Line 9
Line 10
```

Your script should output:

```
Line 10
```

---

## ✅ Solution

Use `sed` to print the 10th line:

```bash
# Read from the file file.txt and output the tenth line to stdout.
sed -n '10p' file.txt
```

---

## 📝 Notes

* `sed -n '10p'` means:

  * `-n` suppresses automatic printing
  * `10p` tells sed to print only line 10


 # Problem 2:

## 2. Valid Phone Numbers

## Description

Given a text file `file.txt` containing one phone number per line, print only the valid phone numbers.

A valid number matches one of the formats:

* `(xxx) xxx-xxxx`
* `xxx-xxx-xxxx`

Where **x** is a digit.

## Example

### Input

```
987-123-4567
123 456 7890
(123) 456-7890
```

### Output

```
987-123-4567
(123) 456-7890
```

## Solution

```bash
grep -E '^(\([0-9]{3}\) [0-9]{3}-[0-9]{4}|[0-9]{3}-[0-9]{3}-[0-9]{4})$' file.txt
```

 
