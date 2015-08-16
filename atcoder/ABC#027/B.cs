using System;
using System.Linq;

class Program {
    public static void Main() {
        var N = int.Parse(Console.ReadLine());
        var a = Console.ReadLine()
            .Split(new[]{ ' ' })
            .Select(int.Parse)
            .ToList();

        var aSum = a.Sum();

        if (aSum % N != 0) {
            Console.WriteLine(-1);
            return;
        }

        var groupUnitNum = aSum / N;
        var groupResidents = 0;
        var groupIslands = 0;
        var bridgeNum = 0;

        for (int i = 0; i < N; i++) {

            if (groupResidents == 0 && a[i] == groupUnitNum) {
                continue;
            }

            groupIslands++;

            groupResidents += a[i];

            if (a.Skip(i + 1 - groupIslands).Take(i + 1).Sum() == groupIslands * groupUnitNum) {
                bridgeNum += groupIslands - 1;
                groupResidents = 0;
                groupIslands = 0;
            }
        }

        Console.WriteLine(bridgeNum);
    }
}
