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
                        <tr>
                            <td>Year</td>
                            <td>MVP</td>
                            <td>Defender</td>
                            <td>Scorer</td>
                            <td>Most_improvement</td>


                        </tr>
                    %for i in cur:

                         <tr>
                            <td>{{i[0]}}</td>
                            <td>{{i[1]}}</td>
                            <td>{{i[2]}}</td>
                            <td>{{i[3]}}</td>
                            <td>{{i[4]}}</td>
                         </tr>
                         
                    %end

                </table>
            </div>
        </div>
    </body>
</html>