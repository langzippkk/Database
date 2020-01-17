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
                    %for i in cur:
                         <tr>
                            <td>year</td>
                            <td>teams_total</td>
                            <td>season_start</td>
                            <td>championship</td>

                         </tr>

                         <tr>
                            <td>{{i[0]}}
                            % temp = "/del+"+str(i[0])
                            % temp1 = "/dependency+"+str(i[0])
                            % temp2 = "/insertdependency+"+str(i[0])
                            % temp3 = "/viewedit+"+str(i[0])
                            <form action="/NBA1">
                            <a href = {{temp}}>
                            Delete</button>
                            </form>
                            </td>
                            <td>{{i[1]}}


                            <form action="/NBA2">
                            <a href = /NBA2>
                            Show its dependency table</button>
                            </form>

                            <form action="/NBA1">
                            <a href = {{temp1}}>
                            Show its dependency record</button>
                            
                            </form>

                            </td>
                            <td>{{i[2]}}


                            <form action="/INSERT">
                            <a href = /INSERT>
                            INSERT NEW RECORD</button>
                            </form>

                            <form action="/dependency">
                            <a href = {{temp2}}>
                            INSERT DEPENDENCY</button>
                            </form>
                            </td>

                            <td>{{i[3]}}

                            <form action="/viewedit">
                            <a href = {{temp3}}>
                            VIEW/EDIT</button>

                            </td>

                         </tr>
                         
                    %end

                </table>
            </div>
        </div>
    </body>
</html>