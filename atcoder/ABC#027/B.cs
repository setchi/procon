using System;
using System.Collections.Generic;
using System.Linq;

class Program
{
    public static void Main()
    {
        var N = int.Parse(Console.ReadLine());
        var a = Console.ReadLine()
            .Split(new[] { ' ' })
            .Select(int.Parse)
            .ToList();

        var aSum = a.Sum();

        if (aSum % N != 0)
        {
            Console.WriteLine(-1);
            return;
        }

        var bridgeCount = 0;
        var unitNum = aSum / N;

        for (int i = 0; i < N; i++)
        {
            if (a.Skip(i).Take(N - i).Sum() != (N - i) * unitNum)
            {
                bridgeCount++;
            }
        }

        Console.WriteLine(bridgeCount);
    }
}
