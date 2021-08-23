public class App {
    public static void main(String[] args) {
        int sum1 = 50 * 4; // 200
        int sum2 = sum1 + sum1 / 2; // 200 + (200/2) // 300
        sum2++; // 301
        int sum3 = sum2 * 2; // 602
        sum3 = 205; // 205
        sum3 += 4; // 205+4 = 209
        System.out.println(sum1); // 200
        System.out.println(sum2); // 301
        System.out.println(sum3); // 209
    }
}
