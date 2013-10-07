s/[\t\ ]+/ /g;
s/([a-zA-Z0-9_+\.-]+)([\t\ ])(install)/TRUE\n\1\2/g;
s/([a-zA-Z0-9_+\.-]+)([\t\ ])(deinstall)/FALSE\n\1\2/g
