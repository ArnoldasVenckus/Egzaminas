<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" 
    crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Exo:ital,wght@1,300&display=swap" rel="stylesheet"> 
    <script src="https://kit.fontawesome.com/9ed765a904.js" crossorigin="anonymous"></script>  
    <link rel="stylesheet" href="includes/stylesheet.css">
    <title>Document</title>
</head>
<body class="container-fluid">
    <header class="row header mb-3">
        <div class="col">
            <img src="img/logo.png" alt="logo" class="logo">
        </div>
    </header>
    <div class="container w-100">
        <section>
            <div class="row mb-3">
                <div class="col">
                    <h2 style="font-size: 32px; font-weight: 400">Naujausi kursai</h2>
                </div>
            </div>
            <div class="row mb-3">
                <div class="card col-lg-4 col-md-6 col-sm-12">
                    <img src="img/php.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="#">
                            <h5 class="card-title">PHP Pagrindai</h5>
                        </a>
                        <p class="autorius">Autorius</p>
                        <p class="card-text">
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?
                            Aliquid ducimus atque facere deserunt nemo enim explicabo fuga?
                        </p>
                        <div class="row">
                            <div class="col">
                                <span>4</span>
                                <i class="far fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="col text-align-right">
                                <i class="fas fa-comment"></i>
                                <span>15</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card col-lg-4 col-md-6 col-sm-12">
                    <img src="img/css.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="#">
                            <h5 class="card-title">HTML/CSS Įvadas</h5>
                        </a>
                        <p class="autorius">Autorius</p>
                        <p class="card-text">
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?
                            Aliquid ducimus atque facere deserunt nemo enim explicabo fuga?
                        </p>
                        <div class="row">
                            <div class="col">
                                <span>4</span>
                                <i class="far fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="col text-align-right">
                                <i class="fas fa-comment"></i>
                                <span>27</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card col-lg-4 col-md-6 col-sm-12">
                    <img src="img/git.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="#">
                            <h5 class="card-title">Pažintis su GIT</h5>
                        </a>
                        <p class="autorius">Autorius</p>
                        <p class="card-text">
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?
                            Aliquid ducimus atque facere deserunt nemo enim explicabo fuga?
                        </p>
                        <div class="row">
                            <div class="col">
                                <span>3</span>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="col text-align-right">
                                <i class="fas fa-comment"></i>
                                <span>3</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="card col-lg-4 col-md-6 col-sm-12">
                    <img src="img/js.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <a href="#">
                            <h5 class="card-title">JavaScript Žaliems</h5>
                        </a>
                        <p class="autorius">Autorius</p>
                        <p class="card-text">
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, neque dignissimos?
                            Aliquid ducimus atque facere deserunt nemo enim explicabo fuga?
                        </p>
                        <div class="row">
                            <div class="col">
                                <span>5</span>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="col text-align-right">
                                <i class="fas fa-comment"></i>
                                <span>9</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section>
            <div class="row mt-5">
                <div class="col">
                    <h2 style="font-size: 32px; font-weight: 400">Sekite Naujienas</h2>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <p>Norite gauti pranešimus apie naujus kursus? Užsisakykite mūsų naujienlaiškį!</p>
                </div>
            </div>
            <div class="row w-50">
                <div class="col form-box">
                    <form class="forma" name="myForm" onsubmit="return validateForm(event)" action="#" method="post">
                        <div class="mb-3">
                            <label for="vardas" class="form-label">Vardas</label>
                            <input type="text" name="vardas" class="form-control" id="vardas" aria-describedby="vardas">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">El. paštas</label>
                            <input type="email" name="email" class="form-control" id="email">
                        </div>
                        <button type="submit" class="btn button">Užsisakyti</button>
                    </form>
                </div>
            </div>
        </section>
        <footer class="row mt-5">
            <div class="col">
                &#169; 2021 Arnoldas Venckus
            </div>
        </footer>
    </div>
    <script src="includes/script.js"></script>
</body>
</html>