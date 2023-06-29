<?php
require_once '../db/connect.php';
$db = new Database();

if(isset($_GET['key-search'])) {
    $key = $_GET['key-search'];
    $sql = "SELECT p.*, c.*, p.name as name_product FROM product p JOIN category c ON p.category_id = c.id_category WHERE p.name LIKE '%" . $key . "%'";
    $sql2 = "SELECT * FROM product";
    $item_per_page = !empty($_GET['per_page']) ? $_GET['per_page'] : 3;
    $current_page = !empty($_GET['page']) ? $_GET['page'] : 1;
    $offset = ($current_page - 1) * $item_per_page;
    $totalRecords = $db->select($sql2);
    $totalPages = ceil(sizeof($totalRecords) / $item_per_page);
    $result = $db->query($sql);
    if (mysqli_num_rows($result)) {
        while ($row = mysqli_fetch_array($result)) {
            echo '<div class="grid__item">';
            echo '<div class="grid__item-content">';
            echo '<a href="detail.php?id_product=' . $row['id_product'] . '">';
            echo '<div class="wrapper__product-img"><img src="imgsql/' . $row['img'] . '" class="grid__item-img" alt="img error" srcset=""></div>';
            echo '<div class="grid__item-info">';
            echo '<label class="grid__item-title">' . $row['name'] . '</label>';
            echo '<div class="grid__item-name black">' . $row['name_product'] . '</div>';
            echo '<div class="grid__item-price"><strong class="red">' . number_format($row['price'], 0, ',', '.') . 'đ</strong></div>';
            echo '</div>';
            echo '</a>';
            echo '</div>';
            echo '</div>';
        }
   } else {
      echo 'Không tìm thấy sản phẩm nào!';
   }

// Đóng kết nối cơ sở dữ liệu
$db->close();
}