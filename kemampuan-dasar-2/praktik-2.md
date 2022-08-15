No Peserta : 30220038
Aditya     : Aditya

GitHub telah menjadi batu penjuru untuk semua hal perangkat lunak sumber terbuka. Pengembang menyukainya, berkolaborasi di dalamnya, dan terus-menerus membangun proyek luar biasa melaluinya. Selain menghosting kode kami, daya tarik utama GitHub adalah menggunakannya sebagai alat kolaboratif. Dalam tutorial ini, mari kita jelajahi beberapa fitur GitHub yang paling berguna, terutama untuk bekerja dalam tim, menjadikannya lebih efisien, produktif, dan yang terpenting, menyenangkan! 

Kolaborasi Github dan Perangkat Lunak

Dalam dunia proyek perangkat lunak, tidak dapat dihindari bahwa kita akan menemukan diri kita bekerja dalam tim untuk menyelesaikan sebuah proyek. Untuk tutorial tentang Github dan kolaborasi tim ini, kita akan menjelajahi beberapa alat paling umum yang biasanya kita butuhkan saat bekerja dengan tim perangkat lunak. Alat-alat yang dibahas adalah:

1.) Adding Team Members - Organisasi & Kolaborator
2.) Pull Requests - Mengirim & Menggabungkan
3.) Bug Tracking - Masalah Github
4.) Analytics - Grafik & Jaringan
5.) Project Management  - Trello & Pelacak Penting
6.) Continuous Integration - Travis CI
7.) Code Review - Komentar Baris & kueri URL
8.) Documenting - Wiki & Hubot

1: Menambahkan Anggota Tim
	Secara umum ada dua cara menyiapkan Github untuk kolaborasi tim: 
	1.) Organizations  - Pemilik organisasi dapat membuat banyak tim dengan tingkat izin yang berbeda untuk berbagai repositori.
	2.) Collaborators  - Pemilik repositori dapat menambahkan kolaborator dengan akses Baca + Tulis untuk satu repositori.

	- Organizations
		Jika Anda mengawasi beberapa tim dan ingin menetapkan tingkat izin yang berbeda untuk setiap tim dengan berbagai anggota dan menambahkan setiap anggota ke repositori yang berbeda, maka Organisasi akan menjadi pilihan terbaik. Setiap akun pengguna Github sudah dapat membuat Organisasi gratis untuk repositori kode sumber terbuka. Untuk membuat Organisasi, cukup telusuri ke halaman pengaturan organisasi Anda:

	Untuk mengakses halaman tim untuk Organisasi Anda, Anda cukup membuka http://github.com/organizations/[organization-name]/teams untuk melihatnya atau bahkan mengunjungi https://github.com/organizations/[organization- name]/teams/new untuk membuat tim baru dengan anggota dari 3 tingkat izin yang berbeda seperti:

	1.) Pull Only     : Ambil dan Gabungkan dengan repositori lain atau salinan lokal. Akses hanya baca.
	2.) Push and Pull : (1) bersamaan dengan pembaruan repo jarak jauh. Akses Baca + Tulis.
	3.) Push, Pull & Administrative : (1), (2) bersama dengan hak atas info penagihan, membuat tim, serta membatalkan akun Organisasi. Baca + Tulis + Akses admin.

	- Collaborators
		Kolaborator digunakan untuk memberikan akses Baca + Tulis ke satu repositori yang dimiliki oleh akun pribadi. Untuk menambahkan Kolaborator, (akun pribadi Github lainnya) cukup buka https://github.com/[nama pengguna]/[repo-name]/settings/collaboration: Setelah selesai, setiap Kolaborator akan melihat perubahan dalam akses status pada halaman repositori. Setelah kita memiliki akses Tulis ke repositori, kita dapat melakukan git clone, mengerjakan perubahan, membuat git pull untuk mengambil dan menggabungkan perubahan apa pun di repositori jarak jauh dan akhirnya git push.

2: Tarik Permintaan
	Permintaan Tarik adalah cara yang luar biasa untuk berkontribusi ke repositori secara mandiri dengan melakukan forking. Pada akhirnya, jika kita mau, kita bisa mengirim permintaan tarik ke pemilik repositori untuk menggabungkan perubahan kode kita. Permintaan tarik itu sendiri kemudian dapat memicu diskusi untuk kualitas kode, fitur, atau bahkan strategi umum.

	- Memulai Permintaan Tarik
		Ada dua model pull request di Github: Fork & Pull Model - Digunakan di repositori publik yang tidak memiliki akses push

		Bagikan Model Repositori - Digunakan dalam repositori pribadi di mana kami memiliki akses push. Garpu tidak diperlukan dalam kasus ini.
		
		Di sini kita melihat alur kerja antara dua pengguna (pemilik repo dan pemilik repo bercabang) untuk 	model Fork and Pull:

	 	Repositori Github yang ingin Anda sumbangkan, dan klik tombol "Fork" untuk membuat tiruan repositori di akun Github Anda sendiri:

		Ini akan membuat salinan persis dari repositori di akun Anda sendiri

		Pilih URL SSH sehingga akan meminta frasa sandi kunci SSH Anda alih-alih nama pengguna dan kata sandi setiap kali Anda git push atau git pull. Selanjutnya, kami akan mengkloning repositori ini ke mesin lokal kami:
			$ git clone [ssh-url] [nama folder]
			$ cd [nama folder]
		Umumnya, kami akan membuat cabang git baru untuk setiap fitur baru. Ini adalah praktik yang baik karena di masa depan jika kita melanjutkanperbarui cabang setelah beberapa diskusi, permintaan tarik akan diperbarui secara otomatis. Mari buat cabang baru untuk membuat perubahan yang sangat sederhana untuk mengubah file readme.md:
		$ git checkout -b [fitur baru]
		Setelah membuat penambahan yang relevan untuk membangun fitur baru, kami hanya akan melakukan perubahan baru dan checkout ke cabang master git:
			$ git tambahkan.
			$ git commit -m "informasi ditambahkan di readme"
			$ git checkout master
		Pada titik ini, kami akan mendorong cabang ke repositori jarak jauh. Untuk ini pertama-tama kita akan memeriksa nama cabang dengan fitur baru serta alias repositori jarak jauh git. Kemudian kita akan mendorong perubahan menggunakan git Push [git-remote-alias] [branch-name]:
			$ git cabang
			$ git jarak jauh -v
		asal git@github.com:[forked-repo-owner-username]/[repo-name].git (ambil)
		asal git@github.com:[forked-repo-owner-username]/[repo-name].git (push)
			$ git push asal readme
		Di halaman Github repositori bercabang kami, kami akan mengubah ke cabang denganfitur baru dan kemudian tekan tombol "Tarik Permintaan".

		Setelah mengirimkan permintaan tarik, itu akan langsung membawa kita ke halaman permintaan tarik repositori asli. Kami akan melihat permintaan tarik kami, baik sebagai masalah baru maupun permintaan tarik baru.

		Setelah diskusi, mungkin pemilik repositori bercabang mungkin ingin menambahkan perubahan pada fitur baru. Dalam hal ini, kami akan checkout ke cabang yang sama di mesin lokal kami, melakukan itu, dan mendorongnya kembali ke Github. Ketika kami mengunjungi halaman permintaan tarik dari repositori asli, itu akan diperbarui secara otomatis!

		Menggabungkan Permintaan Tarik
		Jika Anda adalah pemilik repositori asli, ada dua cara untuk menggabungkan permintaan tarik yang masuk:

		Menggabungkan langsung di Github: Jika kita menggabungkan langsung di Github, pastikan tidak ada konflik dan siap untuk digabung ke cabang master. Pemilik repositori asli cukup mengklik tombol hijau "Gabungkan Permintaan Tarik" untuk melakukannya:

		Penggabungan di lokal kamimesin: Di lain waktu, mungkin ada konflik penggabungan, dan setelah mengklik tombol "info", Github akan memiliki instruksi yang jelas tentang bagaimana kami dapat menggabungkan cabang di mesin lokal kami dengan menarik perubahan dari cabang kontributor:

		Ada model percabangan berbeda yang digunakan untuk pembuatan versi dalam tim pengembangan perangkat lunak. Berikut adalah dua model alur kerja git yang populer: (1) Alur kerja Github yang memiliki model percabangan sederhana dan menggunakan permintaan tarik dan (2) Gitflow yang memiliki percabangan lebih luas. Model yang akhirnya dipilih pasti akan bervariasi tergantung pada tim, proyek, dan situasinya.
3: Pelacakan Bug
	Di Github, pusat untuk semua pelacakan bug adalah Masalah. Meskipun mereka terutama untuk pelacakan bug, juga berguna untuk menggunakan Masalah dengan cara berikut: Bug: Hal-hal yang jelas rusak dan perlu diperbaiki
	Fitur: Ide baru yang keren dan keren untuk diterapkan
	To do list: Daftar periksa item yang harus diselesaikan
	Mari kita jelajahi beberapa fitur Isu:

	Label: Mereka adalah kategori berwarna untuk setiap edisi. Mereka sangat membantu untuk menyaring masalah yang sesuai.
	Milestones: Mereka adalah kategori tanggal yang dapat dikaitkan dengan setiap masalah dan berguna untuk mengidentifikasi masalah apa yang perlu dikerjakan untuk rilis berikutnya. Juga karena Milestones terhubung ke masalah, secara otomatis memperbarui bilah kemajuan setelah menutup setiap masalah terkait.
	Pencarian: Pencarian lengkapi otomatis untuk masalah dan pencapaian

	Penugasan: Setiap masalah dapat ditugaskan ke orang yang bertanggung jawab untuk memperbaiki masalah tersebut. Ini adalah fitur lain yang berguna untuk melihat apa yang harus kita kerjakan.

	Tutup otomatis: Komit pesan dengan Perbaikan/Tetapatau Tutup/Tutup/Tutup #[nomor-masalah] akan secara otomatis menutup masalah.
	
	$ git tambahkan.
	$ git commit -m "url yang diperbaiki. perbaikan #2"
	$ git push asal master

	Sebutan: Siapa pun juga dapat meninggalkan catatan dengan hanya menunjukkan #[nomor-masalah] di pesan mereka. Karena nomor masalah memiliki hyperlink, ini membuatnya sangat mudah untuk menyebutkan masalah terkait selama diskusi.

4: Analisis

	Ada dua alat yang memberikan wawasan tentang repositori - Grafik dan Jaringan. Grafik Github memberikan wawasan tentang kolaborator dan komitmen di balik setiap repositori kode, sementara Github Network menyediakan visualisasi pada setiap kontributor dan komitmen mereka di semua repositori bercabang. Analisis dan grafik ini menjadi sangat kuat, terutama saat bekerja dalam tim.

	Grafik
	Grafik memberikan analisis terperinci seperti:

	Kontributor: Siapa saja kontributornya? Dan berapa banyak baris kode yang mereka tambahkan ataumenghapus?

	Contributors: Minggu mana komit terjadi dalam setahun terakhir?
	Code Frequency: Berapa banyak baris kode yang dilakukan di seluruh siklus hidup proyek?
	Punchcard: Pada jam berapa biasanya commit dilakukan?

	Jaringan
	Github Network adalah alat yang ampuh yang memungkinkan Anda melihat komitmen setiap kontributor dan bagaimana mereka terkait satu sama lain. Ketika kita melihat visualisator secara keseluruhan, kita melihat setiap komit pada setiap cabang dari setiap repositori yang termasuk dalam jaringan.

5: Manajemen Proyek
	Sementara Masalah Github memiliki kemampuan manajemen proyek dengan Masalah dan Tonggak, beberapa tim mungkin lebih memilih alat lain karena fitur lain atau alur kerja yang ada. Di bagian ini, kita akan melihat bagaimana kita dapat menghubungkan Github dengan dua alat manajemen proyek populer lainnya - Trello dan Pivotal Tracker. Dengan kait layanan Github, kami dapat mengotomatiskan tugas pembaruan dengan komitmen, masalah, dan banyak aktivitas lainnya. Otomatisasi ini membantu tidak hanya menghemat waktu, tetapi juga meningkatkan akurasi pembaruan untuk setiap tim pengembangan perangkat lunak. Github dan Trello
	Trello menyediakan cara sederhana dan visual untuk mengelola tugas. Menggunakan metodologi Pengembangan Perangkat Lunak Agile, kartu Trello dapat meniru Papan Kanban virtual sederhana. Sebagai contoh, kami akan secara otomatis membuat kartu Trello setiap kali Permintaan Tarik dibuat menggunakan Kait Layanan Github. Mari kita pergi melalui langkah-langkah!

	Buka akun di Trello jika Anda belum memilikinya dan buat Trello Board baru.

	Buka repositori Github >Pengaturan > Kait Layanan > Trello
	Dapatkan TOKEN di bawah Instal Notes #1 dengan hyperlink yang disediakan untuk otentikasi.
	Di bawah Instal Catatan #2, gunakan URL yang diberikan untuk menghasilkan struktur berformat json yang memberi kita id daftar untuk setiap kartu Trello. BOARDID adalah bagian dari URL ketika kami mengunjungi board di https://trello.com/board/[BOARD-NAME]/[BOARDID]. TOKEN dapat dibuat dengan hyperlink yang diberikan di bawah Install Notes #1.

	Kembali ke kait layanan Github, masukkan id daftar dan token. Centang Aktif, Uji Kait, dan kami siap untuk mendapatkan pembaruan otomatis setiap kali ada Permintaan Tarik.

	Saat berikutnya ada Pull Request, kartu Trello Pull Request akan otomatis memiliki item baru!

	Github dan Pelacak Penting
	Pivotal Tracker adalah alat manajemen proyek gesit ringan lainnya di mana perencanaan berbasis cerita memungkinkan tim untuk berkolaborasi dengan mudah dengan langsung bereaksi terhadap berbagai perubahan dan kemajuan proyek. Berdasarkan kemajuan tim saat ini, itu juga dapat membuat bagan untukmenganalisis kecepatan tim, iterasi burn-up, rilis burn-down, dll. Dalam contoh singkat ini, kami akan secara otomatis mengirimkan cerita dengan menautkannya ke komit Github!

	Buat proyek baru di Pivotal Tracker dengan Cerita baru yang perlu disampaikan.

	Buka Profil > Token API (tepat di bagian bawah). Salin token API yang diberikan.

	Kembali ke repositori Github > Pengaturan > Kait Layanan > Pelacak Penting. Tempel token, centang Aktif dan klik Perbarui Pengaturan. Kami siap untuk mengirimkan Cerita Pelacak Penting secara otomatis dengan Github Commits!

	Akhirnya kami akan melakukan perubahan kami dan menambahkan id pelacak ke pesan komit dengan format git commit -m "message [delivers #tracker_id]"

	$ git tambahkan.
	$ git commit -m "kait Github dan Pivotal Tracker diimplementasikan [menghadirkan #43903595]"
	$ git push
	Sekarang, ketika kita kembali ke Pivotal Tracker, kita akan melihat bahwa cerita telah dikirimkan secara otomatis dengan tautan ke komit Github persis yang menunjukkan perubahan file!

	Dengan ini Contoh Trello dan Pivotal Tracker, jelas bahwa kita dapat dengan erat memasangkan daftar tugas dan pembaruan untuk komit kode kita. Ini adalah penghemat waktu yang luar biasa saat bekerja dalam tim, dan ini meningkatkan akurasi saat menautkan tugas ke komitmen yang tepat. Kabar baiknya adalah, jika Anda sudah menggunakan alat manajemen proyek lain seperti Asana, Basecamp, dan lainnya, Anda juga dapat membuat Service Hooks dengan cara serupa. Jika tidak ada Kait Layanan untuk alat manajemen proyek Anda saat ini, Anda bahkan dapat membuatnya!

6: Integrasi Berkelanjutan
	Continuous Integration (CI) adalah bagian penting dari semua proyek pengembangan perangkat lunak yang bekerja dengan tim. CI memastikan bahwa, ketika pengembang memeriksa kode mereka, build otomatis (termasuk pengujian) mendeteksi kesalahan integrasi secepat mungkin. Ini jelas mengurangi kesalahan integrasi dan membuat iterasi cepat jauh lebih efisien. Dalam contoh ini, kita akan melihat bagaimana Travis CI dapat digunakan dengan Github untuk CI guna mendeteksi kesalahan serta merekomendasikan penggabunganketika melewati semua ujian.

	Menyiapkan Travis CI
	Kami akan menggunakan proyek "hello-world" sederhana untuk node.js dengan grunt.js sebagai alat pembangunan untuk menyiapkan proyek Travis CI. Berikut adalah file dalam proyek:

	File hello.js adalah proyek simpul. Di sini kita sengaja akan meninggalkan titik koma agar tidak melewati alat build kasar untuk linting:

	var http = membutuhkan('http');
	http.createServer(fungsi (req, res) {
	res.writeHead(200, {'Content-Type': 'text/plain'}); res.end('Halo Dunia di Node!\n') // tanpa titik koma, ini tidak akan melewati linting
	}).listen(1337, '127.0.0.1');
	console.log('Server berjalan di http://127.0.0.1:1337/');
	package.json menunjukkan dependensi:
	{ "name": "hello-team", "description": "Demo untuk github dan travis ci untuk kolaborasi tim", "author": "name <email@email.com>", "version": "0.0. 1", "devDependencies": { "grunt": "~0.3.17" }, "scripts": { "test": "grunt travis --verbose" }
	}
	Alat pembuatan gruntjs hanya memilikisatu tugas (linting) hanya untuk kesederhanaan:
	module.exports = function(grunt) { grunt.initConfig({ lint: { file: ['hello.js'] } }); grunt.registerTask('default', 'lint'); grunt.registerTask('travis', 'lint');
	};
	.travis.yml adalah file konfigurasi Travis yang akan membuat Travis menjalankan pengujian kami:
	bahasa: node_js
	node_js: - 0.8
	Selanjutnya, masuk ke Travis dengan Akun Github Anda dan nyalakan kait repositori di bawah tab repositori.

	Jika langkah sebelumnya tidak memicu build, maka kita harus mengatur service hook secara manual. Untuk mengaturnya secara manual, salin Token di bawah tab profil.

	Kembali ke repositori Github untuk menyiapkan kait layanan Github Travis dengan token.

	Untuk pertama kalinya, kita perlu melakukan git push manual untuk memicu build Travis pertama dan jika semuanya baik-baik saja, cukup kunjungi http://travis-ci.org/[username]/[repo-name] untuk melihat build status lulus!

	Travis CI dengan Permintaan Tarik
	Sebelumnya, tanpa CI dalam proses penarikanpermintaan, langkah-langkahnya seperti ini (1) mengirim permintaan tarik (2) menggabungkan (3) tes untuk melihat apakah itu lulus/gagal. Dengan Travis CI terhubung ke pull request, kita akan dapat membalikkan langkah 2 dan 3, lebih lanjut meningkatkan pengambilan keputusan yang cepat tentang apakah baik untuk bergabung dengan Travis memberi kita status dengan setiap pull request. Mari kita lihat bagaimana mewujudkannya.

	Kirim Permintaan Tarik dengan build yang lewat dan Travis akan melakukan keajaibannya untuk memberi tahu Anda bahwa penggabungan itu baik bahkan sebelum penggabungan

	Jika Pull Request gagal membangun, Travis juga akan memberi tahu Anda.

	Jika kita mengklik tombol lansiran merah, itu juga akan tertaut ke halaman travis untuk menunjukkan detail build.
	Travis CI dengan Github sangat berguna untuk tim karena pembuatan otomatis dan pemberitahuan langsung. Ini tentu saja membuat siklus koreksi kesalahan jauh lebih pendek. Jika Anda menggunakan Jenkins, alat CI populer lainnya, ya, Anda juga dapat mengatur kait layanan Github dengan sangat mirip.

	7: Peninjauan Kode
	Dengan setiap komit,Github memungkinkan antarmuka yang bersih untuk komentar umum atau bahkan komentar khusus pada baris kode. Kemampuan untuk mengajukan komentar atau pertanyaan pada setiap baris kode sangat berguna dalam melakukan tinjauan kode baris demi baris. Untuk melihat komentar sebaris, aktifkan-nonaktifkan kotak centang tepat di atas setiap komit.


	Mari kita jelajahi beberapa pola URL yang dapat digunakan untuk membantu kita dalam tinjauan kode dengan memberi kita perbedaan antara komit dengan cepat:

	Bandingkan cabang / tag / SHA1 : gunakan pola URL https://github.com/[username]/[repo-name]/compare/[starting-SHA1]...[ending-SHA1]. Anda dapat melakukan hal yang sama dengan cabang atau tag.

	Bandingkan tanpa spasi : tambahkan ?w=1 ke url perbandingan

	Diff : tambahkan .diff ke URL perbandingan untuk mendapatkan informasi git diff dalam teks biasa. Ini bisa berguna untuk tujuan scripting.
	Patch : tambahkan .patch ke URL perbandingan untuk mendapatkan informasi git diff yang diformat untuk pengiriman patch email.
	Line Linking : Ketika kita mengklik nomor baris pada file apapun, Github akan menambahkan #linedi akhir URL dan buat seluruh warna latar belakang garis menjadi kuning. Ini rapi untuk menunjukkan garis yang tepat. Itu juga menerima rentang garis dengan menambahkan #start-end. Berikut adalah contoh-contoh dari line linking dan line range linking.
	Alat 8: Mendokumentasikan
	Pada bagian ini, kita akan mengeksplorasi dua metode dokumentasi:

	Dokumentasi Formal: Github Wiki untuk membuat dokumentasi untuk kode sumber
	Dokumentasi Informal: Github Hubot untuk mendokumentasikan diskusi di antara anggota tim dan mengotomatiskan pengambilan informasi dengan berinteraksi dengan bot obrolan yang menyenangkan!
	Sebutan, Pintasan & Emoji
	Github Wiki
	Wiki Github dapat dibuat dengan setiap repositori, dan ini bisa sangat berguna untuk meletakkan kode sumber dan dokumentasi di bawah repositori yang sama. Untuk membuat Wiki, cukup akses tab Wiki di header utama dan Anda siap untuk membuat halaman dengan informasi. Wiki sendiri memiliki versinya sendiri, dan data dapat dikloning ke mesin lokal kami untuk pembaruan atau bahkan akses offline.


	Satu hal yang saya temukansangat berguna adalah mengintegrasikan Github Wiki ke dalam proyek kode sumber utama sehingga saya tidak perlu memelihara dua proyek git yang terpisah. Untuk melakukan ini, saya menambahkan Wiki git repo sebagai submodul dari cabang master. Jika Anda menggunakan Travis CI atau CI lainnya, pastikan bahwa alat pembangunan mengabaikan submodul wiki. Untuk file Travis CI .travis.yml, tambahkan berikut ini:

	git: submodul: false
	Kemudian tambahkan wiki submodule git ke repositori kode utama:
	$ git submodule tambahkan git@github.com:[nama pengguna]/[nama-repo].wiki.git
	Kloning ke 'hello-team.wiki'...
	remote: Menghitung objek: 6, selesai.
	remote: Mengompresi objek: 100% (3/3), selesai.
	jarak jauh: Total 6 (delta 0), digunakan kembali 0 (delta 0)
	Menerima objek: 100% (6/6), selesai.
	$ git tambahkan.
	$ git commit -m "menambahkan wiki sebagai submodule"
	$ git push asal master
	Sekarang Wiki akan muncul dengan rapi sebagai submodul di dalam proyek kode sumber utama.

	Github Hub
	Hubot, singkatnya, dapat sangat menambah kesenangan dalam mendokumentasikan dan memberi tahu diskusi tim tentang komitmen penting. Hubot hanyalah bot obrolan yang dapat mengambil informasi atau memberikan pemberitahuan saat terhubung ke komitmen, masalah, atau aktivitas Github. Dalam tim yang berupaya mengurangi rapat secara signifikan atau bahkan menghilangkannya sama sekali, Hubot dengan antarmuka obrolan di antara anggota tim membantu mendokumentasikan setiap diskusi. Ini tentu saja mempromosikan waktu kerja yang fleksibel, karena tidak ada yang harus hadir pada saat yang sama untuk diskusi berlangsung. Peringatan: Hubot sangat adiktif!

	Dengan ini, mari kita mulai dengan menyiapkan Hubot yang dihosting di Heroku dan sebagai bot dengan antarmuka obrolan Campfire! Untuk Heroku dan Campfire, ada versi gratis untuk memulai.

	Kami akan menggunakan Hubot versi Campfire Github. Jika mau, Anda dapat memeriksa adaptor untuk obrolan lain seperti Skype, IRC, Gtalk, dll.
	Buka akun Campfire baru hanya untuk Hubot dan akun ini akanbuat ruang obrolan baru yang nantinya akan diundang semua orang.
	Menyebarkan Hubot ke Heroku dengan instruksi yang diberikan di Wiki Hubot. Jangan khawatir jika url aplikasi heroku memberikan Cannot GET / karena tidak ada yang bisa didapat secara default.
	Dari akun Hubot Campfire, undang diri Anda. Sekarang, masuk ke akun Campfire Anda sendiri dan jalankan bantuan Hubot. Ini akan memberi Anda semua perintah yang tersedia untuk hubot.

	Cobalah beberapa, seperti hubot ship it atau hubot map me CERN.

	Selanjutnya, kita akan menambahkan skrip Hubot. Ada banyak tersedia dengan ilustrasi perintah.
	Sebagai contoh, kita akan menambahkan script github-commits sehingga setiap ada commit, Hubot akan memberitahu kita di chat room. Letakkan file github-commits.coffee di dalam folder scripts.
	Perbarui file package.json dengan dependensi yang relevan seperti yang diinstruksikan di atas setiap file skrip hubot di bawah komentar.
	Terapkan perubahan ke Heroku sekali lagi dengan git push heroku master.
	Arahkan ke repositori di Github yang komitnyapemberitahuan akan ditampilkan dalam obrolan. Tambahkan pengait web di bawah pengaturan repo. Dalam kasus skrip "github-commit" tersebut, webhook akan menjadi [HUBOT_URL]:[PORT]/hubot/gh-commits?room=[ROOM_ID]

	Lain kali repositori memiliki komit, Hubot akan mengobrol dan mengatakannya!

	Sebagai catatan terakhir tentang bekerja dengan tim di Github, berikut adalah beberapa tip produktivitas:

	Sebutan - Di area teks apa pun, kami dapat menyebutkan pengguna github lain dengan @pengguna dan pengguna akan diberi tahu tentang komentar tersebut
	Tombol Pintasan - Tekan [shift] + ? untuk mengakses tombol pintasan Github di halaman mana pun.
	Emoji - Menggunakan lembar contekan Emoji, area teks Github juga mendukung penyisipan ikon. Silakan dan bersenang-senanglah denganrekan tim Anda!
	Kolaborasi Non-Perangkat Lunak di Github
	Sebagian besar dari kita akan berpikir untuk menggunakan Github hanya untuk proyek perangkat lunak. Bagaimanapun, Github dimulai untuk "pengkodean" sosial. Tapi, ada beberapa repositori Github keren yang digunakan untuk proyek non-coding, dan mereka juga bagus untuk kolaborasi dan diskusi. Karena proyek ini juga open source dan siapa pun dapat berkontribusi, cepat untuk memperbaiki kesalahan, mudah melaporkan bug, dan efektif untuk berkolaborasi dengan orang yang berpikiran sama. Sekedar hiburan, berikut beberapa di antaranya:

	Home Fixes: Pelacakan masalah sebagai alat pemantauan
	Book: Buku MongoDB Kecil, Dasar-dasar Tulang Punggung
	Lyrics: Lirik JSConfEU
	Find Boyfriend: pacar_memerlukan
	Mentoring: Wiki
	Genomic Data: Epidemi Ash Dieback
	Blogs: Sihir CSS