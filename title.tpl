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
            <li>{{ menu['kcal'] }} kcal</li>
            % if menu['image_url']:
                <li><img src="{{ menu['image_url']}}" width=300 height=200></li>
            % end
        </ul>
    % end
</body>
</html>