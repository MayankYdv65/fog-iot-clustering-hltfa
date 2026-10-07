function security_AES(data)

enc = matlab.net.base64encode(uint8(data));
dec = char(matlab.net.base64decode(enc));

disp(['Original: ',data]);
disp(['Encrypted: ',enc]);
disp(['Decrypted: ',dec]);

end