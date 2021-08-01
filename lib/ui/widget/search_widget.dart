part of 'widgets.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 6),
      child: TextFormField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            hintText: 'e.g. Brixton, NW3 or NW3 5TY',
            contentPadding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 2,
              bottom: 2
            ),
            isDense: true,
            hintStyle: TextStyle(color: Colors.black54, fontSize: 18),
            suffixIcon: Icon(CupertinoIcons.search),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
