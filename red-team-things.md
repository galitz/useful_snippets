Generate a fixed length random word without installing any additional packages.
The below generates 10 words of alphanumeric chars of length 8 (using fold, usually available on Linux)

```
cat /dev/urandom | tr -dc 'a-z0-9A-Z' | fold -w 8 | head -n 10
```
example:
```
[ggalitz@mybox ~]$ cat /dev/urandom | tr -dc 'a-z0-9A-Z' | fold -w 8 | head -n 10
9eTvSuRk
2OxLvqmO
b3G2ux8z
2bf4hUBB
NmRABLzU
FLKqGhoe
ePqkp0LK
a0iOQEzk
NmWkNWpv
8k6qPupH

```

You can also use the pwgen command, but that's not typcically installed by default:

```
[ggalitz@mybox ~] pwgen -1 8 10
tie8Beic
igheiZ8e
yuwiJoo3
Bi0uxo4u
chi6ieFe
aiD1oht8
chahDie6
Koom7aeV
zoo4Daiv
Aewu4iep
[ggalitz@mybox ~]$ pwgen -h
Usage: pwgen [ OPTIONS ] [ pw_length ] [ num_pw ]

Options supported by pwgen:
  -c or --capitalize
	Include at least one capital letter in the password
  -A or --no-capitalize
	Don't include capital letters in the password
  -n or --numerals
	Include at least one number in the password
  -0 or --no-numerals
	Don't include numbers in the password
  -y or --symbols
	Include at least one special symbol in the password
  -r <chars> or --remove-chars=<chars>
	Remove characters from the set of characters to generate passwords
  -s or --secure
	Generate completely random passwords
  -B or --ambiguous
	Don't include ambiguous characters in the password
  -h or --help
	Print a help message
  -H or --sha1=path/to/file[#seed]
	Use sha1 hash of given file as a (not so) random generator
  -C
	Print the generated passwords in columns
  -1
	Don't print the generated passwords in columns
  -v or --no-vowels
	Do not use any vowels so as to avoid accidental nasty words


```
