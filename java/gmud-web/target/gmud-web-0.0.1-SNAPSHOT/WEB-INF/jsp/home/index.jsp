
<head>
    <title>Home</title>
</head>
<div class="container-fluid">
    <!-- upper main stats -->
    <div id="main-stats">
        <div class="row-fluid stats-row">
            <div class="span3 stat">
                <div class="data">
                    <span class="number">2457</span>
                    visits
                </div>
                <span class="date">Today</span>
            </div>
            <div class="span3 stat">
                <div class="data">
                    <span class="number">3240</span>
                    users
                </div>
                <span class="date">February 2013</span>
            </div>
            <div class="span3 stat">
                <div class="data">
                    <span class="number">322</span>
                    orders
                </div>
                <span class="date">This week</span>
            </div>
            <div class="span3 stat last">
                <div class="data">
                    <span class="number">$2,340</span>
                    sales
                </div>
                <span class="date">last 30 days</span>
            </div>
        </div>
    </div>
    <!-- end upper main stats -->

    <div id="pad-wrapper">

        <!-- statistics chart built with jQuery Flot -->
        <div class="row-fluid chart">
            <h4>
                Statistics
                 <div class="btn-group pull-right">
                    <button class="glow left">DAY</button>
                    <button class="glow middle active">MONTH</button>
                    <button class="glow right">YEAR</button>
                </div>
            </h4>
            <div class="span12">
                <div id="statsChart"></div>
            </div>
        </div>
        <!-- end statistics chart -->

        <!-- UI Elements section -->
        <div class="row-fluid section ui-elements">
            <h4>UI Elements</h4>
            <div class="span5 knobs">
                <div class="knob-wrapper">
                    <input type="text" value="50" class="knob" data-thickness=".3" data-inputColor="#333" data-fgColor="#30a1ec" data-bgColor="#d4ecfd" data-width="150">
                    <div class="info">
                        <div class="param">
                            <span class="line blue"></span>
                            Active users
                        </div>
                    </div>
                </div>
                <div class="knob-wrapper">
                    <input type="text" value="75" class="knob second" data-thickness=".3" data-inputColor="#333" data-fgColor="#3d88ba" data-bgColor="#d4ecfd" data-width="150">
                    <div class="info">
                        <div class="param">
                            <span class="line blue"></span>
                            % disk space usage
                        </div>
                    </div>
                </div>
            </div>
            <div class="span6 showcase">
                <div class="ui-sliders">
                    <div class="slider slider-sample1 vertical-handler"></div>
                    <div class="slider slider-sample2"></div>
                    <div class="slider slider-sample3"></div>
                </div>
                <div class="ui-group">
                    <a class="btn-flat inverse">Large Button</a>
                    <a class="btn-flat gray">Large Button</a>
                    <a class="btn-flat default">Large Button</a>
                    <a class="btn-flat primary">Large Button</a>
                </div>

                <div class="ui-group">
                    <a class="btn-flat icon">
                        <i class="tool"></i> Icon button
                    </a>
                    <a class="btn-glow small inverse">
                        <i class="shuffle"></i>
                    </a>
                    <a class="btn-glow small primary">
                        <i class="setting"></i>
                    </a>
                    <a class="btn-glow small default">
                        <i class="attach"></i>
                    </a>
                    <div class="ui-select">
                        <select>
                            <option selected>Dropdown</option>
                            <option>Custom selects</option>
                            <option>Pure css styles</option>
                        </select>
                    </div>

                    <div class="btn-group">
                        <button class="glow left">LEFT</button>
                        <button class="glow right">RIGHT</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- end UI elements section -->

        <!-- table sample -->
        <!-- the script for the toggle all checkboxes from header is located in js/theme.js -->
        <div class="table-products section">
            <div class="row-fluid head">
                <div class="span12">
                    <h4>Products <small>Table sample</small></h4>
                </div>
            </div>

            <div class="row-fluid filter-block">
                <div class="pull-right">
                    <div class="ui-select">
                        <select>
                          <option>Filter users</option>
                          <option>Signed last 30 days</option>
                          <option>Active users</option>
                        </select>
                    </div>
                    <input type="text" class="search">
                    <a class="btn-flat new-product">+ Add product</a>
                </div>
            </div>

            <div class="row-fluid">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="span3">
                                <input type="checkbox">
                                Product
                            </th>
                            <th class="span3">
                                <span class="line"></span>Description
                            </th>
                            <th class="span3">
                                <span class="line"></span>Status
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- row -->
                        <tr class="first">
                            <td>
                                <input type="checkbox">
                                <div class="img">
                                    <img src="<c:url value='/img/table-img.png'/>">
                                </div>
                                <a href="<c:url value='#'/>">There are many variations </a>
                            </td>
                            <td class="description">
                                if you are going to use a passage of Lorem Ipsum.
                            </td>
                            <td>
                                <span class="label label-success">Active</span>
                                <ul class="actions">
                                    <li><i class="table-edit"></i></li>
                                    <li><i class="table-settings"></i></li>
                                    <li class="last"><i class="table-delete"></i></li>
                                </ul>
                            </td>
                        </tr>
                        <!-- row -->
                        <tr>
                            <td>
                                <input type="checkbox">
                                <div class="img">
                                    <img src="<c:url value='/img/table-img.png'/>">
                                </div>
                                <a href="<c:url value='#'/>">Internet tend</a>
                            </td>
                            <td class="description">
                                There are many variations of passages.
                            </td>
                            <td>
                                <ul class="actions">
                                    <li><i class="table-edit"></i></li>
                                    <li><i class="table-settings"></i></li>
                                    <li class="last"><i class="table-delete"></i></li>
                                </ul>
                            </td>
                        </tr>
                        <!-- row -->
                        <tr>
                            <td>
                                <input type="checkbox">
                                <div class="img">
                                    <img src="<c:url value='/img/table-img.png'/>">
                                </div>
                                <a href="<c:url value='#'/>">Many desktop publishing </a>
                            </td>
                            <td class="description">
                                if you are going to use a passage of Lorem Ipsum.
                            </td>
                            <td>
                                <ul class="actions">
                                    <li><i class="table-edit"></i></li>
                                    <li><i class="table-settings"></i></li>
                                    <li class="last"><i class="table-delete"></i></li>
                                </ul>
                            </td>
                        </tr>
                        <!-- row -->
                        <tr>
                            <td>
                                <input type="checkbox">
                                <div class="img">
                                    <img src="<c:url value='/img/table-img.png'/>">
                                </div>
                                <a href="<c:url value='#'/>">Generate Lorem </a>
                            </td>
                            <td class="description">
                                There are many variations of passages.
                            </td>
                            <td>
                                <span class="label label-info">Standby</span>
                                <ul class="actions">
                                    <li><i class="table-edit"></i></li>
                                    <li><i class="table-settings"></i></li>
                                    <li class="last"><i class="table-delete"></i></li>
                                </ul>
                            </td>
                        </tr>
                        <!-- row -->
                        <tr>
                            <td>
                                <input type="checkbox">
                                <div class="img">
                                    <img src="<c:url value='/img/table-img.png'/>">
                                </div>
                                <a href="<c:url value='#'/>">Internet tend</a>
                            </td>
                            <td class="description">
                                There are many variations of passages.
                            </td>
                            <td>
                                <ul class="actions">
                                    <li><i class="table-edit"></i></li>
                                    <li><i class="table-settings"></i></li>
                                    <li class="last"><i class="table-delete"></i></li>
                                </ul>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="pagination">
              <ul>
                <li><a href="<c:url value='#'/>">&#8249;</a></li>
                <li><a class="active" href="<c:url value='#'/>">1</a></li>
                <li><a href="<c:url value='#'/>">2</a></li>
                <li><a href="<c:url value='#'/>">3</a></li>
                <li><a href="<c:url value='#'/>">4</a></li>
                <li><a href="<c:url value='#'/>">&#8250;</a></li>
              </ul>
            </div>
        </div>
        <!-- end table sample -->

    </div>


    <!-- knob -->
    <script src="<c:url value='/js/jquery.knob.js'/>"></script>

    <!-- flot charts -->
    <script src="<c:url value='/js/jquery.flot.js'/>"></script>
    <script src="<c:url value='/js/jquery.flot.stack.js'/>"></script>
    <script src="<c:url value='/js/jquery.flot.resize.js'/>"></script>
    <script src="<c:url value='/js/theme.js'/>"></script>

    <script src="<c:url value='/js/home/home.js'/>"></script>
</div>