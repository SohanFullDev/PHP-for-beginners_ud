<?php


$db_host = "localhost";
$db_name = "cms";
$db_user = "root";
$db_pass = "";

$conn = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

if (mysqli_connect_error()) {
    echo mysqli_connect_error();
    exit;
}

$sql = "SELECT *
        FROM article
        ORDER BY published_at;";

$results = mysqli_query($conn, $sql);

if ($results === false) {
    echo mysqli_error($conn);
} else {
    //$articles = mysqli_fetch_all($results);
    $articles = mysqli_fetch_all($results , MYSQLI_ASSOC);

  //  var_dump($articles);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Blog</title>
</head>
<body>
    <header>
        <h1>My Blog</h1>
    </header>
    
    <main>
        <?php if (empty($articles)): ?> <!-- ei if pore add hobe aghe foreach nicher -->
            <p>No articles found.</p>
            <?php else: ?>
                <ul>
                    <?php foreach($articles as $article):?>
                        <li>
                        <article>
                            <h2><?= $article['title']; ?></h2>
                            <p><?= $article['content']; ?></p>
                        </article>

                        </li>

                    <?php endforeach; ?>    
                </ul>

        <?php endif; ?>
    </main>

</body>
</html>