using System;
using System.Linq;

class Program {
    public static void Main() {
        var NAB = Console.ReadLine()
            .Split(new []{ ' ' })
            .Select(x => int.Parse(x))
            .ToList();

        var N = NAB[0];
        var A = NAB[1];
        var B = NAB[2];

        var X = 0;

        for (int i = 0; i < N; i++) {
            var input = Console.ReadLine().Split(new []{ ' ' }).ToList();

            var s = input[0];
            var d = int.Parse(input[1]);

            var amount = (d < A) ? A : (d > B) ? B : d;

            if (s == "West")
                amount = -amount;

            X += amount;
        }

        var res = "";

        if (X == 0) {
            res = X.ToString();
        } else {
            if (X >= 1) {
                res = "East " + Math.Abs(X);
            } else if (X <= -1) {
                res = "West " + Math.Abs(X);
            }
        }

        Console.WriteLine(res);
    }
}
