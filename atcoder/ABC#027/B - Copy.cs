using System;
using System.Linq;
using System.Collections.Generic;

class Program {

    public class KeyValuePairClass<TKey, TValue> {
        TKey key;
        TValue value;

        public KeyValuePairClass(TKey key, TValue value) {
            this.key = key;
            this.value = value;
        }

        public TValue Value {
            get { return value; }
            set { this.value = value; } }

        public TKey Key {
            get { return key; }
            set { this.key = value; } }
    }

    public static string ListToString(List<int> list) {
        var res = "";
        list.ForEach(i => res += i + " ");
        return res;
    }

    public static void Main() {
        var N = int.Parse(Console.ReadLine());
        var a = Console.ReadLine()
            .Split(new[]{ ' ' })
            .Select(int.Parse)
            .Select((ai, i) => new KeyValuePairClass<int, int>(i, ai))
            .ToList();


        var aSum = a.Sum(kv => kv.Value);
        var unitNum = aSum / N;
        var aa = a.Where(kv => kv.Value != unitNum);

        var bridgeNum = 0;


        if (aSum % N != 0) {
            Console.WriteLine(-1);
            return;
        }


        foreach (var item in aa
            .OrderByDescending(kv => kv.Value)
            .Where(kv => kv.Value > unitNum)) {

            var distanceShortOrderList = aa
                .Where(kv => kv.Value < unitNum)
                .OrderBy(kv => Math.Abs(kv.Key - item.Key) * kv.Value);

            var groupBridgeNumMin = 0;
            var groupBridgeNumMax = 0;

            foreach (var item_ in distanceShortOrderList) {
                var amount = Math.Min(unitNum - item_.Value, item.Value - unitNum - item_.Value);
                item_.Value += amount;
                item.Value -= amount;

                var dist = item_.Key - item.Key;
                if (dist > 0) {
                    groupBridgeNumMax = Math.Max(groupBridgeNumMax, dist);
                } else {
                    groupBridgeNumMin = Math.Min(groupBridgeNumMin, dist);
                }

                if (item.Value == unitNum)
                    break;
            }

            bridgeNum += Math.Abs(groupBridgeNumMax - groupBridgeNumMin);
        }

        Console.WriteLine(bridgeNum);
    }
}
