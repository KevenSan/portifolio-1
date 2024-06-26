import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF13131F),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: const [
            ProjectItem(
              imageUrl: 'assets/imagens/project_0.png',
              description: 'Description for project 0.',
              dialogText: 'Esta é descricção explicativa do projeto 0.',
            ),
            ProjectItem(
              imageUrl: 'assets/imagens/project_1.png',
              description: 'Description for project 1.',
              dialogText: 'Esta é descricção explicativa do projeto 1.',
            ),
            ProjectItem(
              imageUrl: 'assets/imagens/project_2.png',
              description: 'Description for project 2.',
              dialogText: 'Esta é descricção explicativa do projeto 2.',
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectItem extends StatefulWidget {
  final String imageUrl;
  final String description;
  final String dialogText;

  const ProjectItem({
    Key? key,
    required this.imageUrl,
    required this.description,
    required this.dialogText,
  }) : super(key: key);

  @override
  _ProjectItemState createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          _isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          _isHovered = false;
        });
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(widget.imageUrl),
                fit: BoxFit.cover,
                colorFilter: _isHovered
                    ? ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken)
                    : null,
              ),
            ),
          ),
          if (_isHovered)
            Center(
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => ProjectDetailDialog(
                      imageUrl: widget.imageUrl,
                      description: widget.dialogText,
                    ),
                  );
                },
                child: const Text('View more'),
              ),
            ),
        ],
      ),
    );
  }
}

class ProjectDetailDialog extends StatelessWidget {
  final String imageUrl;
  final String description;

  const ProjectDetailDialog({
    Key? key,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: 400,
        width: MediaQuery.sizeOf(context).width * 0.50,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Project Details',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 10),
                  Text(description),
                  //const SizedBox(height: 5),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Close'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
