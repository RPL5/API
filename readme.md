# API Learning


## For using / Mengunakan

1. Import databse Mahasiswa.sql
2. Start mysql and apache2
3. run in terminal 'php -S localhost:8000 -t public' folder project
4. if error edit file env pastikan password database sudah benar default disini adalah root & root

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

---
## Security Vulnerabilities

