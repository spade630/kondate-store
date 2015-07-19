<!DOCTYPE html>
<html>
<head lang="ja">
    <meta charset="UTF-8"></meta>
    <title>献立表</title>
</head>
<body>
    <h1>Kondate Table</h1>
    % for menu in menus:
        <ul>
            <li>{{ menu['name'] }}</li>
            <li>{{ menu['kcal'] }}</li>
        </ul>
    % end
</body>
</html>