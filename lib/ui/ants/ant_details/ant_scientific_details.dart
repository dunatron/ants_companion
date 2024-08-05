import 'package:ants_companion/domain/ants/models/ant_scientific_classification.dart';
import 'package:flutter/material.dart';

class AntScientificDetails extends StatelessWidget {
  const AntScientificDetails({super.key, required this.details});

  final AntScientificClassification details;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('species: ${details.species}'),
          Text('phylum: ${details.phylum}'),
          Text('subphylum: ${details.subphylum}'),
          Text('class: ${details.classification}'),
          Text('order: ${details.order}'),
          Text('infraorder: ${details.infraorder}'),
          Text('family: ${details.family}'),
          Text('subfamily: ${details.subfamily}'),
          Text('tribe: ${details.tribe}'),
          Text('genus: ${details.genus}'),
        ],
      ),
    );
  }
}
