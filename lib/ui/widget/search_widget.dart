part of 'widgets.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: "Search here",
            contentPadding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            hintStyle: TextStyle(color: Colors.black54, fontSize: 18),
            suffixIcon: Icon(Icons.search),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
