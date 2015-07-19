<!DOCTYPE html>
<html>
<head lang="ja">
    <meta charset="UTF-8"></meta>
    <title>献立表</title>
</head>
<body>
    <h1>Kondate Table</h1>
    <ul>
        % for menu in menus:
            <li>{{ menu['name'] }}</li>
            <li>{{ menu['kcal'] }}</li>
        % end
    </ul>
</body>
</html>