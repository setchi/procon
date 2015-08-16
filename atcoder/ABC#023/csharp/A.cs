using System;

class Program
{
    static void Main(string[] args)
    {
        string str = Console.ReadLine();

        int a = int.Parse(str.Substring(0, 1));
        int b = int.Parse(str.Substring(1, 1));

        Console.WriteLine(a + b);
    }
}
