<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SAIGON WATERBUS</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
body {
  background-color: #313942;
  font-family: 'Montserrat', sans-serif;
  margin: 0;
  padding: 0;
}

main {
  align-items: center;
  display: flex;
  flex-direction: column;
  height: 100vh;
  justify-content: center;
  text-align: center;
}

h1 {
  color: #e7ebf2;
  font-size: 12.5rem;
  letter-spacing: .10em;
  margin: .025em 0;
  text-shadow: .05em .05em 0 rgba(0,0,0,.25);
  white-space: nowrap;
}

@media(max-width: 30rem) {
  h1 {
    font-size: 8.5rem;
  }
}

h1 > span {
  animation: spooky 2s alternate infinite linear;
  color: #528cce;
  display: inline-block;
}

h2 {
  color: #e7ebf2;
  margin-bottom: .40em;
}

p {
  color: #ccc;
  margin-top: 0;
}

@keyframes spooky {
  from {
    transform: translateY(.15em) scaleY(.95);
  }
  to {
    transform: translateY(-.15em);
  }
}
</style>
</head>

<body>
<main>
  <h1>4<span><i class="fas fa-ghost"></i></span>4</h1>
  <h2>Error: 404 Page Not Found</h2>
  <p>Xin lỗi trang này hiện không tồn tại!</p> <p><a href="/asm/saigonwaterbus">Trở về trang chủ</a>  </p>
</main>
</body>
</html>