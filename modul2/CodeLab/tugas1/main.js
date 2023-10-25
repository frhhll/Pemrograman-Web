function tugas1() {
  let bil1 = parseInt(document.getElementById("bil1").value);
  let bil2 = parseInt(document.getElementById("bil2").value);

  let hasil = bil1 + bil2;

  alert("Hasil Penjumlahan: " + hasil);
}
function ulang() {
  document.getElementById("bil1").value = "";
  document.getElementById("bil2").value = "";
}
