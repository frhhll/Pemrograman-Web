function tugas2() {
  let Nama = document.getElementById("nama").value;
  let Email = document.getElementById("email").value;
  let Alamat = document.getElementById("alamat").value;

  var data = Nama + " " + Email + " " + Alamat + " ";

  if (Nama === "" || Email === "" || Alamat === "") {
    alert("Anda harus mengisi data dengan lengkap");
  } else {
    alert("Data Anda Berhasil Di Input" + data);
  }
}
