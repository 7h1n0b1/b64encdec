# b64encdec
Encode or Decode to or from base64 files respectively.

Inspiration: - 
I like solving and working on CTFs. So, i came across a CTF which had this long list of base64 encoded passwords which needed to be decoded and then tried for the bruteforceing, through hydra or other tool. I googled and visited many online decoding sites for decoding this list but none were able to decode the whole file at once, rather they were only decoding one line at a time. And so I wrote this script that decodes new line seperated base64 encoded strings into human readable format.

Then again I added reverse functionality to encode it too.

Usage: -

1. Get the file. (git clone https://github.com/7h1n0b1/b64encdec.git)
2. Run the file ie. ./encdec (I have used bash as default, you can change it to whatever fits you)
3. You will be provided with two options. Encode or decode.
4. Select 1 for encoding the file and 2 for decoding the file.
5. Enter the path to the file. (Make sure all the strings are new line seperated)
6. A new file will be created named "operation.txt", containing the decoded or encoded strings.
