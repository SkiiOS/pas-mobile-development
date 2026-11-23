import 'package:pas_flutter/models/makanan_model.dart';
import 'package:pas_flutter/models/review_model.dart';
import 'package:get/get.dart';

class ListMakananController extends GetxController {
  RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng Spesial ",
      hargaMakanan: 25000,
      gambar: "https://o-cdf.oramiland.com/unsafe/cnc-magazine.oramiland.com/parenting/original_images/soto_ayam_bumbu_kuning.jpg",
      desc: "Nasi goreng bumbu rempah dengan telur mata sapi,ayam suwir, dan kerupuk.",
      rating: 5,
      review: [
        ReviewModel(
          namaPembeli: "Rina",
          rating: 5,
          komentar: "Kuahnya segar dan gurih, porsinya pas.",
        ),
        ReviewModel(
          namaPembeli: "Budi",
          rating: 5,
          komentar: "Ayamnya banyak, cocok untuk makan siang.",
        ),
        ReviewModel(
          namaPembeli: "Sari",
          rating: 4,
          komentar: "Enak, tapi kalau ramai harus antre.",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Ayam Bakar Madu",
      hargaMakanan: 30000,
      gambar: "https://media.indozone.id/crop/0x0:0x0/images/2026/09/17/1789617596_6aab65bca5789_lentog_tanjung_png.png",
      desc: "Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.",
      rating: 4,
      review: [
        ReviewModel(
          namaPembeli: "Dimas",
          rating: 4,
          komentar: "Enak dan khas Kudus, cocok untuk sarapan.",
        ),
        ReviewModel(
          namaPembeli: "Ayu",
          rating: 4,
          komentar: "Santannya pas, tidak terlalu berat.",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Sate Ayam Madura",
      hargaMakanan: 28000,
      gambar: "https://cdngnfi2.sgp1.cdn.digitaloceanspaces.com/gnfi/uploads/images/2021/10/0420362021-np.jpg",
      desc: "10 tusuk sate ayam daging pilihan dengan siramanbumbu kacang kental.",
      rating: 4,
      review: [
        ReviewModel(
          namaPembeli: "Fajar",
          rating: 4,
          komentar: "Dagingnya empuk, bumbunya terasa.",
        ),
        ReviewModel(
          namaPembeli: "Nina",
          rating: 5,
          komentar: "Kuahnya kaya rempah, pasti beli lagi.",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Mie Ayam Bakso",
      hargaMakanan: 20000,
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiwJ4llazZfm183hLfhCmrHvNqusJ0uH37O65jJAGbdA&s=10",
      desc: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.",
      rating: 3,
      review: [
        ReviewModel(
          namaPembeli: "Wulan",
          rating: 3,
          komentar: "Manisnya pas, cocok untuk oleh-oleh.",
        ),
        ReviewModel(
          namaPembeli: "Hendra",
          rating: 3,
          komentar: "Teksturnya agak keras, rasanya enak.",
        ),
      ],
    ),
    MakananModel(
      namaMakanan: "Es Teh Manis Jumbo",
      hargaMakanan: 8000,
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShlIIPuBs9f0b7ClpkhefMFWDOsbMZhLVzSHscLG4XWQ&s=10",
      desc: "Minuman teh melati segar dengan gula asli dan es batu kristal.",
      rating: 4,
      review: [
        ReviewModel(
          namaPembeli: "Putri",
          rating: 4,
          komentar: "Renyah dan murah.",
        ),
        ReviewModel(
          namaPembeli: "Andi",
          rating: 4,
          komentar: "Cocok untuk camilan sambil nongkrong.",
        ),
      ],
    ),
    // dll
  ].obs;

  void hapus(int index) {
    listMakanan.removeAt(index);
  }
}
