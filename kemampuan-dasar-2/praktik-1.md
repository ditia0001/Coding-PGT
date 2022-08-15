No Peserta : 30220038
Nama       : Aditya

Panduan Kolaborasi Github

Ini hanyalah salah satu dari banyak cara untuk berkolaborasi dalam sebuah proyek menggunakan GitHub. Tapi itu salah satu yang saya sarankan jika Anda baru mulai bekerja dengan tim dan belum membuat aliran git atau tahu harus mulai dari mana untuk membangunnya.

Langkah 1: Inisialisasi Proyek Baru
Buat proyek/direktori baru dari baris perintah

$ rel baru github_guide
Buka Github dan klik tombol '+' di pojok kanan rop dan pilih 'New Repository'.


Kemudian isi kolom Repository name dan Description. Tetap publik, dan jangan "Inisialisasi repositori ini dengan README". Jangan mengubah apa pun. Klik "Buat repositori".


Selanjutnya Anda akan melihat halaman setup. Ini adalah instruksi untuk menghubungkan Repo yang baru saja Anda buat di Github (Remote) ke direktori yang Anda buat di terminal Anda (Lokal).


Rekatkan baris di kotak merah baris demi baris yang dimulai dengan "echo..." ke terminal saat Anda sedang memasukkan cd ke direktori yang baru saja Anda buat secara lokal. Terminal Anda akan terlihat seperti ini setelah Anda selesai:


Ini menambahkan folder '.git' ke repo Anda, menghubungkan Anda ke Repo Github jarak jauh Anda dan juga memberi Anda file '.gitignore'.


Dan jika Anda pergi ke halaman Repo Github Anda, Anda akan melihat ReadMe yang Anda inisialisasi dan referensi ke komit pertama yang Anda buat.


Sekarang mari kita perbarui Repo ini. Kembali ke terminal Anda dan git add, git commit, dan git Push:

$git tambahkan.
$ git commit -m "Komit kedua"
$ git push
Sekarang periksa repo Anda. Seharusnya memiliki semua file yang Anda buat dengan direktori lokal Anda bersama dengan id komit baru (9c2e2f6):


Anda telah diinisialisasi dan siap untuk mulai bekerja!

Langkah 2: Siapkan Tim Anda
Anda adalah pemain tim, jadi Anda perlu menambahkan tim Anda ke repo agar mereka dapat berkolaborasi. Setelah tim Anda ditambahkan sebagai kolaborator, mereka akan dapat mendorong, menggabungkan, dan banyak hal merusak lainnya, jadi pastikan Anda hanya menambahkan rekan satu tim Anda.

Klik pada tab "Pengaturan" perwakilan Anda, lalu "Kolaborator" lalu cari pengguna Github dan tambahkan mereka dengan mengklik "Tambahkan Kolaborator":


Mereka akan menerima email yang memberitahukan bahwa Anda menambahkan mereka dan akan terdaftar sebagai kolaborator.


Jika Anda seorang kolaborator, buka halaman Github Repo, Git Clone proyek, dan cd ke direktori. Jangan memotongnya! Forking akan menyalinnya di Repo baru ke halaman Github Anda, tetapi Anda tidak menginginkannya — Anda ingin berkolaborasi di Repo Github yang sama dengan rekan satu tim Anda.


$ git clone git@github.com:MinesJA/github_guide.git
$cd github_guide/
Dan sekarang Anda siap untuk berkolaborasi!

Langkah 3: Berkolaborasi
Saat Anda menggunakan git untuk mengerjakan proyek yang sama dengan banyak orang, ada satu aturan utama yang harus Anda ikuti:

CABANG UTAMA HARUS SELALU DIPLOYABLE

Cara agar Master dapat digunakan adalah dengan membuat cabang baru untuk fitur baru dan menggabungkannya ke dalam Master setelah selesai. Inilah cara kerjanya.

Langkah 3a: Cabang

Untuk memulai, cabang harus selalu mewakili fitur. Misalnya, jika Anda ingin menambahkan kemampuan bagi pengguna untuk masuk, Anda mungkin harus membuat cabang yang disebut "user_authentication" dan di cabang itu Anda hanya perlu memperbarui apa yang Anda perlukan untuk memungkinkan pengguna masuk.

Penting juga saat berkolaborasi agar tim Anda memilih fitur yang tidak memiliki kode yang tumpang tindih. Misalnya, Anda tidak boleh mengerjakan cabang "user_login" pada saat yang sama dengan rekan satu tim Anda bekerja di cabang "user_logout" karena kemungkinan Anda mengerjakan file yang sama dan menulis kode yang tumpang tindih sangat tinggi .

Jadi katakanlah Anda ingin membuat model Pengguna. Di terminal Anda, buat cabang baru:

$ git co -b create_user
“co” adalah singkatan dari “checkout” yang digunakan untuk berpindah antar cabang. Menambahkan "-b" dan nama di akhir membuat cabang baru dan kemudian pindah ke cabang baru itu untuk kita.

Anda harus dapat memverifikasi ini dengan perintah:

$git cabang
Yang harus menghasilkan:


Anda sekarang berada di cabang baru dan dapat mulai membuat kode.

Catatan: Sebagai aturan umum, Anda harus sering git add dan git commit ketika Anda menyelesaikan sesuatu yang memungkinkan kode Anda berfungsi (berakhir menjadi beberapa kali dalam satu jam). Misalnya, ketika Anda menyelesaikan suatu metode dan basis kode berfungsi, git commit seperti ini:

$ git commit -m "Fungsi tambahan untuk memungkinkan Pengguna mengatakan 'Halo Dunia'"
Langkah 3b: Mengirimkan Permintaan Tarik

Tim Anda menghabiskan sepanjang hari dan malam mengerjakan fitur terpisah mereka di berbagai cabang mereka. Mereka kembali keesokan harinya dengan fitur lengkap mereka dan ingin menggabungkannya kembali ke Master untuk digunakan.

Menentukan Git Flow Anda adalah bagian besar dari bekerja dalam tim, tetapi inilah satu Git Flow yang dapat Anda adopsi untuk saat ini:

Pertama, tentukan siapa yang akan bertanggung jawab menangani penggabungan. Semakin sedikit orang yang bertindak secara independen dalam penggabungan, semakin baik sehingga untuk tim yang terdiri dari 4 orang, Anda mungkin perlu memiliki satu "Reviewer" atau "Merge Master" resmi.

Selanjutnya, minta semua orang git Push cabang mereka:

$ git push
Sekarang pergi ke halaman Repo Github. Anda akan melihat cabang yang Anda dorong di bilah kuning di bagian atas halaman dengan tombol "Bandingkan & tarik permintaan".

Catatan: Atau, Anda dapat memilih cabang di menu tarik-turun “Cabang:” dan pilih cabang yang baru saja Anda tekan. Anda kemudian akan memiliki tombol "Tarik permintaan" dan "Bandingkan" di sisi kanan.


Klik "Bandingkan & tarik permintaan". Ini akan membawa Anda ke halaman "Buka permintaan tarik". Dari sini, Anda harus menulis deskripsi singkat tentang apa yang sebenarnya Anda ubah. Dan Anda harus mengklik tab “Reviewers” ​​dan memilih siapa pun yang diputuskan oleh tim Anda sebagai “Merge Master”. Setelah selesai, klik "Buat permintaan tarik".


Langkah 3c: Menggabungkan Permintaan Tarik

Perhatikan bahwa jika Anda seorang kolaborator, Anda dapat menggabungkan permintaan tarik Anda sendiri. Namun, sekali lagi, jika Anda bekerja dalam tim, lebih masuk akal jika satu orang melakukan semua penggabungan dan semua orang lainnya mengirimkan "Permintaan Tarik" dan menetapkan "Penggabungan Utama" sebagai peninjau hanya untuk memastikan Anda berurusan dengan konflik gabungan apa pun satu cabang pada satu waktu.

Jadi, dengan asumsi Anda adalah orang yang bertanggung jawab untuk mengurus semua penggabungan dan seseorang telah menugaskan Anda sebagai "Peninjau" pada permintaan tarik, ketika Anda masuk ke Github Anda, Anda akan melihat Anda memiliki pemberitahuan yang memberi tahu Anda bahwa seseorang telah menugaskan Anda sebagai pengulas. Anda juga akan melihat bilah kuning yang menunjukkan salah satu rekan tim Anda sebagai “meminta ulasan Anda pada permintaan tarik ini.”

Silakan dan klik tombol “Tambahkan ulasan Anda”.


Ini akan membawa Anda ke halaman Permintaan Tarik. Bagaimana Anda bergerak maju dari sini terserah Anda dan tim Anda. Jika Anda bekerja bersama, saya akan menggunakan setiap pagi untuk duduk sebagai sebuah tim dan melakukan pull request bersama. Jika Anda melakukannya, Anda tidak perlu meninggalkan Ringkasan Ulasan yang bertele-tele dan terperinci.

Namun, jika Anda bekerja dari jarak jauh, ini akan menjadi alat utama Anda untuk memberi tahu pemohon jika mereka perlu membuat perubahan atau jika Anda akan menggabungkan permintaan mereka.


Ketika Anda mengklik "Kirim ulasan" pada tarik-turun "Tinjau perubahan", ulasan Anda sekarang akan ada sebagai komentar di utas permintaan tarik.


Saat Anda puas dengan pull request, pergi ke bagian bawah pull request dan klik “Merge pull request”.


Anda kemudian akan melihat pesan “Tarik permintaan berhasil digabungkan dan ditutup” dan tombol untuk “Hapus cabang” yang harus Anda klik.


Langkah 4: Bilas, Ulangi
Dan itu cukup banyak! Terus tambahkan cabang baru untuk fitur baru dan kemudian bergabung sebagai tim untuk menggabungkannya menjadi master. Jaga master tetap bersih dan dapat digunakan dan jangan mencoba menggabungkan lebih dari satu cabang pada satu waktu dan Anda harus melakukannya dengan baik.