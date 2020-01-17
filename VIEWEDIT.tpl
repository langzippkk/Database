<html>
    <head>
        <title>mpcs 53001 example</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">
    </head>
    <body>
        <!-- Nav Bar-->
        <div id="navbar" class="collapse navbar-collapse navbar-inverse">
        <ul class="nav navbar-nav">
            <li><a href="/">Home</a></li>
            <li><a href="/NBA">New Player Home</a></li>
        </ul>
        </div><!--/.nav-collapse -->
       

        <div class="container">
            <div class="starter-template">
                <!-- Main content should go here-->
                <h1>Honor of the Year</h1>
                

                <table class="table table-striped">

                    %for i in cur:
                     <tr>
                    <form action="/viewedit+{{Year}}" method='post'>

                    Year:<br> <input type="integer" name="Year" value="{{i[0]}}" readonly><Br>
                    teams_total:<br> <input type="text" name="teams_total" value="{{i[1]}}"><Br>
                    season_start:<br> <input type="datetime" name="season_start" value="{{i[2]}}"><Br>
                    Changed_season_start:<br> <input type="date" name="season_start" value="{{i[2]}}"><Br>
                    Championship:<br> <input type="text" name="Championship" value="{{i[3]}}"><Br>
                         </tr>
                    <input type="submit">
                    %end

                </table>
            </div>
        </div>
    </body>
</html>