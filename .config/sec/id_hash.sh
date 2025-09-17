#!/usr/bin/env bash


#\\- Hash identifier, supports only: -//#
#MD5, SHA1, SHA224, SHA256, SHA384, SHA512,
#CRC32, NTLM, RipeMD-160, SHA3-256, Whirlpool,
#bcrypt.

hash="$1"
[ -z "$1" ] && exit 1
length=${#hash}

#hex check
if [[ "$hash" =~  ^[0-9a-fA-F]+$ ]]; then
     #length process
   [ $length -eq 8 ] && echo " [ $hash ] hash type: CRC32"
   [ $length -eq 32 ] && echo  " [ $hash ] hash type: MD5 or NTLM"
   [ $length -eq 40 ] && echo  " [ $hash ] hash type: SHA1 or RipeMD-160"
   [ $length -eq 56 ] && echo  " [ $hash ] hash type: SHA224"
   [ $length -eq 60 ] && echo  " [ $hash ] hash type: bcrypt"
   [ $length -eq 64 ] && echo  " [ $hash ] hash type: SHA256 or SHA3-256"
   [ $length -eq 96 ] && echo  " [ $hash ] hash type: SHA384"
   [ $length -eq 128 ] && echo " [ $hash ] hash type: SHA512 or Whirlpool"
   [ $length -gt 128 ]  && echo "[*] Unknown hash type.."
else
     echo "[!] error: not a valid hexadecimal string"
