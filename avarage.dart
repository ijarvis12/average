import "dart:io";

void main() {
        print("This program takes input(s) and finds the average.");
        double total = 0;
        int i = 0;
        double? x = double.tryParse(stdin.readLineSync()!);
        while(x != null) {
                i++;
                total += x;
                x = double.tryParse(stdin.readLineSync()!);
        }
        print("The average: $total");
        String? _ = stdin.readLineSync()!;
}
