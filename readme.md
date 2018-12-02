# API Learning


## For using / Mengunakan

1. Import databse Mahasiswa.sql
2. Start mysql and apache2
3. run in terminal 'php -S localhost:8000 -t public' folder project
4. if error edit file env pastikan password database sudah benar default disini adalah root & root
5. Update Terus database nya tiap kali pulll

## Official Documentation
//Silakan gunakan auth dan memperoleh token dengan api dibawah ini:

-- For Login auth/login

POST - http://localhost:8000/auth/login?nim=16650015&password=12345

	RESULT
	{
    "data": {
        "user": {
            "id": 1,
            "nim": "16650015",
            "name": "nurchulis",
            "email": "tod32@wolff.biz",
            "created_at": "2018-11-30 01:10:35",
            "updated_at": "2018-11-30 01:10:35"
        }
    },
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJsdW1lbi1qd3QiLCJzdWIiOiIxNjY1MDAxNSIsImlhdCI6MTU0MzY3NTQyMiwiZXhwIjoxNTQzNjc5MDIyfQ.3m9A3DYaHr8GoJkSIQ2pUPZavfVsK9BP54t5g7Vlaxk"
}

-- For Show Makul api/makul
GET - http://localhost:8000/api/makul?token=(TOKEN)

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


