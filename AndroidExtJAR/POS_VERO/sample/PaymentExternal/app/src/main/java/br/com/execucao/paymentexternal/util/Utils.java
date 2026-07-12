package br.com.execucao.paymentexternal.util;

import java.util.Locale;

public class Utils {

    public static String bin2hex(byte[] bin) {
        StringBuilder hex = new StringBuilder();

        for (int iBin = 0; iBin < bin.length; iBin++) {
            int item = bin[iBin] & 0xFF;
            hex.append(item < 16 ? "0" : "");
            hex.append(Integer.toHexString(item).toUpperCase(Locale.US));
        }
        return hex.toString();
    }

    public static byte[] hex2bin(String hex) {

        byte[] bin = new byte[hex.length() >> 1];
        for (int iHex = 0; iHex < hex.length(); iHex += 2) {
            try {
                bin[iHex >> 1] = (byte) Integer.parseInt(hex.substring(iHex, iHex + 2), 16);
            } catch (Exception e) {
                bin[iHex >> 1] = 0;
            }
        }
        return bin;
    }
}
