# API Learning

##Sudah Dapat dikases di Alamat Berikut : http://nurchulis.000webhostapp.com

## For using / Mengunakan

1. Import databse Mahasiswa.sql
2. Start mysql and apache2
3. run in terminal 'php -S localhost:8000 -t public' folder project
4. if error edit file env pastikan password database sudah benar default disini adalah root & root
5. Update Terus database nya tiap kali pulll

## Official Documentation
//Silakan gunakan auth dan memperoleh token dengan api dibawah ini:

## GET MAKUL YANG DIAMBIL PER MAHASISWA

GET - http://localhost:8000/api/krs/16650015
    RESULT

    [
    {
        "id_krs": 3,
        "nim": "16650015",
        "id_makul": "34",
        "id_dosen": 4,
        "id": 34,
        "nama_makul": "Komputer dan Masyarakat",
        "deksripsi": "Komputer dan Masyarakat",
        "sks": 2,
        "created_at": null,
        "updated_at": null,
        "nama_dosen": "Aulia Faqih Rifa'i, M.Kom."
    },
    {
        "id_krs": 4,
        "nim": "16650015",
        "id_makul": "35",
        "id_dosen": 1,
        "id": 35,
        "nama_makul": "Manajemen Resiko",
        "deksripsi": "Manajemen Resiko",
        "sks": 2,
        "created_at": null,
        "updated_at": null,
        "nama_dosen": "Agus Mulyanto Si, M"
    },
    .............
    ...................
    ........................
    dan seterusnya

##GET Daftar mahasiswa yang mengambil makul yang sama
    
    GET - http://localhost:8000/api/sama/35 <----Id makulnya
    
    RESULT
    [
    {
        "id_krs": 3,
        "nim": 16650015,
        "id_makul": "34",
        "id_dosen": "4",
        "id": 11,
        "name": "nurchulis",
        "email": "nura3609@gmail.com",
        "password": "$2y$10$xTex0QtuH9byhYXpVp15kOSEiOslmL5S05Q0V08.xyOkR2mZJtWZO",
        "created_at": "2018-12-10 17:00:00",
        "updated_at": "2018-12-10 17:00:00"
    },
    {
        "id_krs": 2,
        "nim": 16650016,
        "id_makul": "34",
        "id_dosen": "4",
        "id": 12,
        "name": "nadia sholiha",
        "email": "nadia",
        "password": "$2y$10$xTex0QtuH9byhYXpVp15kOSEiOslmL5S05Q0V08.xyOkR2mZJtWZO",
        "created_at": null,
        "updated_at": null
    },
    {
    ........
    ..............dan seterusnya


## For Login auth/login

POST - http://localhost:8000/auth/login?nim=16650015&password=12345

	RESULT
	{
    "user": {
        "id": 1,
        "nim": 16650015,
        "name": "Ahmad White",
        "email": "clara84@yahoo.com",
        "created_at": "2018-12-02 12:14:50",
        "updated_at": "2018-12-02 12:14:50"
    },
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsdW1lbi1qd3QiLCJzdWIiOjE2NjUwMDE1LCJpYXQiOjE1NDQ0MjQ0MTcsImV4cCI6MTU0NDQyODAxN30.XZSkf05j-LRZDieSqzLx3hJyldlGisqo_Zelt9Mwhug"
    }

## For Show Makul api/makul
GET - http://localhost:8000/api/makul

    RESULT
    [
    {
        "id": 1,
        "nama_makul": "Pemograman Dasar",
        "deksripsi": "Adalah Sebuah Makul Pemograman Dasar",
        "sks": 3,
        "created_at": null,
        "updated_at": null
    },
    {
        "id": 2,
        "nama_makul": "Logika Informatika",
        "deksripsi": "Adalah sebuah Makul Logika Informatika",
        "sks": 3,
        "created_at": null,
        "updated_at": null
    }
]


