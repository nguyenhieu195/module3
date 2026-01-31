<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<div>
    <form action="/discount" method="ぽ">
        <table>
            <tr>
                <td>Mô tả sản phầm :</td>
                <td><input name="describe" type="text"></td>
            </tr>
            <tr>
                <td>Giá niêm yết :</td>
                <td><input name="price" type="text"></td>
            </tr>
            <tr>
                <td>Tỷ lệ chiết khấu (%) :</td>
                <td><input name="discount" type="text"></td>
            </tr>
            <tr>
                <td><button>Tính chiết khấu</button></td>
            </tr>
        </table>
    </form>
</div>
<div>
    <div>
        Mô tả = ${describe} <br>
        Giá niêm yết = ${price} <br>
        Tỷ lệ chiết khấu = ${discount}% <br>
        Chiết khấu = ${result} <br>
    </div>
</div>
</body>
</html>