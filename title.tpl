<!DOCTYPE html>
<html>
<head lang="ja">
    <meta charset="UTF-8"></meta>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <title>献立表</title>
</head>
<style>
     .content-head {
      margin: 24px 0;
      padding-bottom: 12px;
      border-bottom: solid 1px #eee;
    }

    .row {
     display:flex;
     flex-flow: row wrap;
     justify-content: space-between;
    }

    .col-md-3 {
     border: medium solid #f5f5f5;
    }

</style>

<body>
<div class="container">
<div class="content-head">
    <h1>Kondate Table</h1>
    <a class="btn btn-default" href="/new" role="button">献立を追加</a>
</div>
    % for m in menus:
     <div class="row">
        % for menu in m:
        <div class="col-md-3">
           <p> {{ menu['name'] }}</p>
           <p> {{ menu['kcal'] }} kcal</p>
            % if menu['image_url']:
               <p> <img src="{{ menu['image_url']}}"</p>
            % end
        </div>
        % end
    </div>
    % end
</div>
</body>
</html>