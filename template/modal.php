<?php /* require_once 'handle/register.php' */ ?>
<div id="login" class="modal js-modal">
    <!-- Login -->
    <div class="modal-login js-modal-container">
        <!-- login Main -->
        <div class="modal-login-main">
            <div class="modal-login-close">
                <i class="ti-close modal-login-icclose js-modal-close"></i>
            </div>

            <h2 class="modal-login-h2">ĐĂNG NHẬP</h2>

            <div class="modal-login-text">
                <div class="modal-login-info">
                    <i class="ti-user modal-login-icon"></i>
                    <span>Tên đăng nhập</span>
                    <input type="text" class="modal-login-inp user_name" placeholder="">
                </div>

                <div class="modal-login-info">
                    <i class="ti-lock modal-login-icon"></i>
                    <span>Nhập mật khẩu</span>
                    <input type="password" class="modal-login-inp password" placeholder="">
                </div>

                <div class="modal-login-info">
                    <input type="checkbox" class="" placeholder="">
                    <span>Ghi nhớ đăng nhập</span>
                </div>

                <div>
                    <input class="modal-login-inp modal-login-btn" value="ĐĂNG NHẬP" readonly>
                    <div class="modal-login-nav">
                        <a href="#" class="modal-remind-link">Quên mật khẩu?</a>
                        <a href="#" class="modal-register-link">ĐĂNG KÝ</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Register -->
        <form action="handle/register.php" method="POST" id="register-form">
            <div class="modal-login-main modal-register">
                <div class="modal-login-close js-modal-login-close">
                    <i class="ti-close modal-login-icclose js-modal-close"></i>
                </div>

                <h2 class="modal-login-h2">ĐĂNG KÝ</h2>

                <div class="modal-login-text">
                    <div class="modal-login-info">
                        <i class="ti-info-alt modal-login-icon"></i>
                        <span>Họ và tên</span>
                        <input type="text" class="modal-login-inp modal-format-inp fullname" name="fullname" placeholder="">
                        <p class="red fullname-hide text-hide">Nhập đầy đủ họ tên!</p>
                    </div>

                    <div class="modal-login-info gender">
                        <i class="ti-id-badge modal-login-icon"></i>
                        <span class="gender-title">Giới tính</span>
                        <div class="options">
                            <div class="options-item">
                                <input type="radio" class="checked radio-button" name="radio-button" value="male" checked>
                                <label for="male">Nam</label>
                            </div>

                            <div class="options-item">
                                <input type="radio" class="option checked radio-button" name="radio-button" value="female">
                                <label for="female">Nữ</label>
                            </div>

                            <div class="options-item">
                                <input type="radio" class="option checked radio-button" name="radio-button" value="more">
                                <label for="more">Khác</label>
                            </div>
                        </div>
                        <p class="red gender-hide text-hide">Vui lòng chọn giới tính!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-calendar modal-login-icon"></i>
                        <span>Ngày sinh</span>
                        <input type="date" class="modal-login-inp modal-format-inp date" name="date" placeholder="">
                        <p class="alike red date-hide text-hide">Chọn vào ngày sinh!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-location-pin modal-login-icon"></i>
                        <span>Địa chỉ</span>
                        <input type="text" class="modal-login-inp modal-format-inp address" name="address" placeholder="">
                        <p class="alike red address-hide text-hide">Nhập địa chỉ!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-mobile modal-login-icon"></i>
                        <span>Số điện thoại</span>
                        <input type="text" class="modal-login-inp modal-format-inp phone-number" name="phonenumber">
                        <p class="alike red phone-number-hide text-hide">Nhập số điện thoại!</p>
                        <p class="alike red phone-number-hide phone-number-sub-hide">Số điện thoại phải đủ 10 chữ số!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-email modal-login-icon"></i>
                        <span>Email</span>
                        <input type="text" class="modal-login-inp modal-format-inp email" name="email" placeholder="">
                        <p class="alike red email-hide text-hide">Nhập email!</p>
                        <p class="alike red email-sub-hide text-hide">Email không hợp lệ!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-user modal-login-icon"></i>
                        <span>Tên đăng nhập</span>
                        <input type="text" class="modal-login-inp modal-format-inp username" name="username" placeholder="">
                        <p class="alike red username-hide text-hide">Tên đăng nhập không để trống!</p>
                        <p class="alike red username-sub-hide text-hide">Tên đăng nhập phải chứa 4-16 ký tự!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-lock modal-login-icon"></i>
                        <span>Nhập mật khẩu</span>
                        <input type="password" class="modal-login-inp modal-format-inp pass" name="pass" placeholder="">
                        <p class="alike red pass-hide text-hide">Mật khẩu không được để trống!</p>
                        <p class="alike red pass-sub-hide text-hide">Mật khẩu tối thiếu 8 ký tự, chứa ít nhất một chữ số 0-9 và một chữ in hoa A-Z!</p>
                    </div>

                    <div class="modal-login-info">
                        <i class="ti-lock modal-login-icon"></i>
                        <span>Nhập lại mật khẩu</span>
                        <input type="password" class="modal-login-inp modal-format-inp re-password" name="re-password" placeholder="">
                        <p class="alike red re-password-hide text-hide">Vui lòng nhập lại mật khẩu!</p>
                        <p class="alike red re-password-sub-hide text-hide">Mật khẩu nhập lại không trùng khớp!</p>
                    </div>

                    <div class="modal-login-info">
                        <input type="checkbox" class="" placeholder="">
                        <span>Tôi đồng ý với tất cả điều khoản</span>
                        <p class="alike red text-hide">Bạn chưa đồng ý với điều khoản!</p>
                    </div>

                    <div>
                        <input type="submit" class="modal-login-inp modal-login-btn modal-format-btn register-btn" value="ĐĂNG KÝ" name="register" readonly>
                        <input type="" class="modal-login-inp modal-login-btn modal-format-btn login-link" value="ĐĂNG NHẬP" readonly>
                    </div>
                    </>
                </div>
        </form>
    </div>


</div>

<script>
    jQuery(document).ready(function() {
        jQuery('.modal-login-btn').click(function() {
            var user_name = jQuery('.user_name').val();
            var password = jQuery('.password').val();
            console.log(user_name);
            console.log(password);
            if (user_name.length == 0 || password.length == 0) {
                alert('Vui lòng nhập tên đăng nhập và mật khẩu');
                return false;
            }

            jQuery.ajax({
                url: 'handle/login.php',
                method: 'POST',
                data: {
                    user_name: user_name,
                    password: password
                },
                dataType: 'json',
                success: function(response) {
                    if (response.status === 'nvsuccess') {
                        // đăng nhập thành công
                        alert('Nhân viên đăng nhập thành công!');
                        window.location.href = 'Index.php';


                    } else if (response.status === 'khsuccess') {
                        // đăng nhập thành công
                        alert('Khách hàng đăng nhập thành công!');
                        window.location.href = 'Index1.php';

                    } else if (response.status === 'error') {
                        alert('Tài khoản hoặc mật khẩu không chính xác!');
                        window.location.href = 'Index1.php';
                    }

                }
            });

            return false;
        });
    });
</script>
<script>
    if (document.cookie.indexOf('user_name=') !== -1) {
        // Nếu cookie có tồn tại, thực hiện các hành động tương ứng ở đây
        var user_name = document.cookie.split(';')
            .map(c => c.trim())
            .find(c => c.startsWith('user_name='))
            .split('=')[1];

        document.getElementById('login-icon').style.display = 'none';
        document.getElementById('username').innerHTML = '<li style="list-style-type: none;" id="username" class="header__nav-item header__nav-list header__nav-list-user reset-margin user-res-none" data-aos="zoom-in-down" data-aos-duration="2000">' + user_name + '<ul class="header__list-user"><li class="header__list__item-user"><a style="color: inherit; text-decoration: none;" class="header__list__item" href="history_cart.php">Lịch sử đơn hàng</a></li><li class="header__list__item"><a style="color: inherit; text-decoration: none;" class="header__list__item a_madal" href="handle/logout.php">Đăng xuất</a></li></ul></li>';
        document.getElementById('username').style.display = 'inline-block';
        // Tạo thẻ đăng xuất và ẩn đi

        // var logoutLink = document.createElement('a');
        // logoutLink.setAttribute("id", "text-logout");
        // logoutLink.href = 'handle/logout.php'; // đặt đường dẫn đến trang xử lý đăng xuất
        // logoutLink.innerText = 'Đăng xuất';
        // logoutLink.style.display = 'none';
        // document.getElementById('username').appendChild(logoutLink); // đặt thẻ đăng xuất vào thẻ span #username

        // // Hiển thị/ẩn thẻ đăng xuất khi hover vào thẻ span #username
        // document.getElementById('username').addEventListener('mouseenter', function() {
        //   logoutLink.style.display = 'inline-block';
        //   logoutLink.style.color = 'white';
        // });
        // document.getElementById('username').addEventListener('mouseleave', function() {
        //   logoutLink.style.display = 'none';
        // });
        // logoutLink.addEventListener('click', function(event) {
        //     event.preventDefault(); // Ngăn chặn trình duyệt chuyển đến trang logout.php

        //     if (confirm('Bạn có chắc chắn muốn đăng xuất không?')) {
        //       // Nếu người dùng nhấn "OK" trong hộp thoại xác nhận
        //       window.location.href = logoutLink.href; // Chuyển đến trang logout.php
        //     } });
        // } else {
        //   /* alert('Bạn chưa đăng nhập'); */
    }
</script>

<script>
   jQuery(document).ready(function() {
    jQuery('#register-form').on('submit', function(e) {
        e.preventDefault();
        var fullName = jQuery('.fullname').val();
        var gender = jQuery('.radio-button').val();
        var date = jQuery('.date').val();
        var address = jQuery('.address').val();
        var phoneNumber = jQuery('.phone-number').val();
        var email = jQuery('.email').val();
        var username = jQuery('.username').val();
        var password = jQuery('.pass').val();

        var isValid = validInput();
        if (isValid) {
            jQuery.ajax({
                url: 'handle/register.php',
                method: 'POST',
                data: {
                    register: true,
                    fullname: fullName,
                    gender: gender,
                    date: date,
                    address: address,
                    phone_numbers: phoneNumber,
                    email: email,
                    username: username,
                    pass: password
                },
                dataType: 'json',
                success: function(response) {
                    if (response.status === 'success') {
                        alert(response.message);
                        window.location.href = "index1.php";
                    } else {
                        /* alert('Đăng ký thất bại!'); */
                    }
                },
                error: function(e) {
                    alert("Tên đăng nhập đã tồn tại");
                }
            });
        } else {

            // Form data is not valid, do not send AJAX request
            // You can display an error message to the user here
        }
    });
});
</script>

