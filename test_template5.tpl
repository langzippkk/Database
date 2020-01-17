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
                <h1>Different Years of NBA Games with Championship Team</h1>
                

                <table class="table table-striped">
                         <tr>
                            <td>NBA season(Year)</td>
                            <td><a href="/INSERT">INSERT NEW RECORD</a></td>
                         </tr>
                    %for i in cur:

                         <tr>
                            <td>{{i[0]}}
                            % temp = "/del+"+str(i[0])
                            % temp1 = "/dependency+"+str(i[0])
                            % temp2 = "/insertdependency+"+str(i[0])
                            % temp3 = "/viewedit+"+str(i[0])
                            <a href={{temp}}>Delete</a>
                            </td>
                            
                            <td>
                            <a href="/NBA2">Show its dependency table</a>
                            </td>

                            <td>
                            <a href={{temp1}}>Show its dependency record</a>
                            </td>

                            <td>
                            <a href={{temp2}}>INSERT DEPENDENCY</a>
                            </td>

                            <td>
                            <a href={{temp3}}>VIEW/EDIT</a>
                            </td>

                         </tr>
                         
                    %end

                </table>
            </div>
        </div>
    </body>
</html>