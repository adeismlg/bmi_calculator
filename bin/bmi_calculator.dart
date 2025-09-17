
void addToHistory(List<Map<String, dynamic>> riwayat, Map<String, dynamic> data) {
	riwayat.add(data);
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
	print('Riwayat Perhitungan BMI:');
	for (var data in riwayat) {
		print('Tinggi: [34m${data['tinggi']} cm[0m, Berat: [32m${data['berat']} kg[0m, BMI: [33m${data['bmi'].toStringAsFixed(2)}[0m, Kategori: [35m${data['kategori']}[0m');
	}
}

void main() {
	List<Map<String, dynamic>> riwayat = [];

	// Simulasi beberapa input
	var inputs = [
		{'tinggi': 170.0, 'berat': 65.0},
		{'tinggi': 165.0, 'berat': 75.0},
		{'tinggi': 180.0, 'berat': 85.0},
	];

	for (var input in inputs) {
		double tinggi = input['tinggi'] as double;
		double berat = input['berat'] as double;
		if (validateInput(tinggi, berat)) {
			var hasil = calculateBMI(tinggi, berat);
			addToHistory(riwayat, hasil);
		}
	}

	// Tampilkan riwayat menggunakan perulangan
	tampilkanRiwayat(riwayat);
}