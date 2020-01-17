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
                <h1>New Players</h1>
                

                <table class="table table-striped">
                    %for i in cur:
                         <tr>
                            <td>First_Name</td>
                            <td>Last_Name</td>
                            <td>Height</td>
                            <td>weight</td>
                            <td>position</td>
                            <td>age</td>
                            <td>point</td>
                            <td>rebound</td>
                            <td>assist</td>
                            <td>steal</td>
                            <td>block</td>
                            <td>turnover</td>

                         </tr>
                         <tr>
                            <td>{{i[1]}}</td>
                            <td>{{i[2]}}</td>
                            <td>{{i[3]}}</td>
                            <td>{{i[4]}}</td>
                            <td>{{i[5]}}</td>
                            <td>{{i[6]}}</td>
                            <td>{{i[7]}}</td>
                            <td>{{i[8]}}</td>
                            <td>{{i[9]}}</td>
                            <td>{{i[10]}}</td>
                            <td>{{i[11]}}</td>
                            <td>{{i[12]}}</td>
                         </tr>
                         
                    %end

                </table>
            </div>
        </div>
    </body>
</html>