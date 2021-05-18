class Candidate {
  final int id;
  final String name;
  final String party;
  final String imageUrl;
  final double? approvalLevel;

  const Candidate(this.id, this.name, this.party, this.imageUrl, [this.approvalLevel]);
}