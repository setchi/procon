using System;

class Program
{
    static void Main(string[] args)
    {
        int N = int.Parse(Console.ReadLine());
        string S = Console.ReadLine();

        int res = -1;
        string str = "b";
        string[] chars = { "a", "c", "b" };

        for (int i = 0; i < N; i++)
        {
            if (S == str)
            {
                res = i;
                break;
            }
            str = chars[i % 3] + str + chars[2 - (i + 1) % 3];
        }

        Console.WriteLine(res);
    }
}
