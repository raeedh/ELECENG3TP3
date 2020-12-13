part2q4;

secret_message = "";

for i = 1:64
    if freqs(i,:) == [1000 2000 3000 4000]
        secret_message = secret_message + "A";
    elseif freqs(i,:) == [1000 2000 3000 5000]
        secret_message = secret_message + "B";
    elseif freqs(i,:) == [1000 2000 3000 6000]
        secret_message = secret_message + "C";
    elseif freqs(i,:) == [1000 2000 3000 7000]
        secret_message = secret_message + "D";
    elseif freqs(i,:) == [1000 2000 4000 5000]
        secret_message = secret_message + "E";
    elseif freqs(i,:) == [1000 2000 4000 6000]
        secret_message = secret_message + "F";
    elseif freqs(i,:) == [1000 2000 4000 7000]
        secret_message = secret_message + "G";
    elseif freqs(i,:) == [1000 2000 5000 6000]
        secret_message = secret_message + "H";
    elseif freqs(i,:) == [1000 2000 5000 7000]
        secret_message = secret_message + "I";
    elseif freqs(i,:) == [1000 2000 6000 7000]
        secret_message = secret_message + "J";
    elseif freqs(i,:) == [1000 3000 4000 5000]
        secret_message = secret_message + "K";
    elseif freqs(i,:) == [1000 3000 4000 6000]
        secret_message = secret_message + "L";
    elseif freqs(i,:) == [1000 3000 4000 7000]
        secret_message = secret_message + "M";
    elseif freqs(i,:) == [1000 3000 5000 6000]
        secret_message = secret_message + "N";
    elseif freqs(i,:) == [1000 3000 5000 7000]
        secret_message = secret_message + "O";
    elseif freqs(i,:) == [1000 3000 6000 7000]
        secret_message = secret_message + "P";
    elseif freqs(i,:) == [1000 4000 5000 6000]
        secret_message = secret_message + "Q";
    elseif freqs(i,:) == [1000 4000 5000 7000]
        secret_message = secret_message + "R";
    elseif freqs(i,:) == [1000 4000 6000 7000]
        secret_message = secret_message + "S";
    elseif freqs(i,:) == [1000 5000 6000 7000]
        secret_message = secret_message + "T";
    elseif freqs(i,:) == [2000 3000 4000 5000]
        secret_message = secret_message + "U";
    elseif freqs(i,:) == [2000 3000 4000 6000]
        secret_message = secret_message + "V";
    elseif freqs(i,:) == [2000 3000 4000 7000]
        secret_message = secret_message + "W";
    elseif freqs(i,:) == [2000 3000 5000 6000]
        secret_message = secret_message + "X";
    elseif freqs(i,:) == [2000 3000 5000 7000]
        secret_message = secret_message + "Y";
    elseif freqs(i,:) == [2000 3000 6000 7000]
        secret_message = secret_message + "Z";
    elseif freqs(i,:) == [2000 4000 5000 6000]
        secret_message = secret_message + " ";
    elseif freqs(i,:) == [2000 4000 5000 7000]
        secret_message = secret_message + ".";
    end
end

disp(secret_message);
