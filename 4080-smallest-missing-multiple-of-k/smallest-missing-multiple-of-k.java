// class Solution {
//     public int missingMultiple(int[] nums, int k) {
//         int x = k;
//         while (true) {
//             boolean found = false;
//             for (int num : nums) {
//                 if (num == x) {
//                     found = true;
//                     break;
//                 }
//             }
//             if (!found) {
//                 return x;
//             }
//             x += k;
//         }
//     }
// }


class Solution {
    public int missingMultiple(int[] nums, int k) {
        HashSet<Integer> set = new HashSet<>();
        for(int i =0;i<nums.length;i++){
            set.add(nums[i]);
        }
        int x = k;
        while (set.contains(x)) {
            x += k;
        }
        return x;
    }
}



// k jo bhi de rkha ho uske multiples nikalege jse k =2 means 2,4,6,8,10,,, fir check krege ki yeh multiples hashset m present h ki nhi agr h toh next xhexk kregeg by adding x into thta element so that next element will occur , if that element x is notpresent inthe set then return that x 