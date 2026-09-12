class Solution {
    public String longestCommonPrefix(String[] strs) {

        // StringBuilder is used to store the common prefix
        StringBuilder result = new StringBuilder();

        // Take each character of the first string
        for (int i = 0; i < strs[0].length(); i++) {

            // Store the current character of first string
            char ch = strs[0].charAt(i);

            // Compare this character with all other strings
            for (int j = 1; j < strs.length; j++) {

                // Two conditions:
                // 1. Current string is shorter than i
                // 2. Current character is different
                if (i >= strs[j].length() ||
                    strs[j].charAt(i) != ch) {

                    // Common prefix ends here
                    return result.toString();
                }
            }

            // Character is common in all strings
            // So add it to result
            result.append(ch);
        }

        // Return the common prefix
        return result.toString();
    }
}