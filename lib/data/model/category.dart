enum Category { semuaKata, hewan, angka, tempat }

String categoryToString(Category category) {
  switch (category) {
    case Category.semuaKata:
      return 'Semua Kata';
    case Category.hewan:
      return 'Hewan';
    case Category.angka:
      return 'Angka';
    case Category.tempat:
      return 'Tempat';
    default:
      return '';
  }
}
