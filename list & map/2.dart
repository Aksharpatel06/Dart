void main() {
  List name = ["akshar", "meet", "aayush", "fenish", "darshan","akshar","darshan"];
  List uniquname = [];

  for (String n in name) {
    if (!uniquname.contains(n)) {
      uniquname.add(n);
    }
  }
  print(uniquname);
}