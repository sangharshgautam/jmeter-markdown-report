<#macro reportInformation>
    <div class="col-lg-12">
         <div class="panel panel-default" style="text-align:center;border:1px solid;border-color: rgb(221, 221, 221);">
            <div class="panel-heading" style="color: #333;background-color: #f5f5f5;border-color: #ddd;">
               <p class="dashboard-title" style="font-weight: bold;color: darkslategrey;font-size: 20px;margin-top: -5px;">Test and Report information</p>
            </div>
            <div class="panel-body" style="padding-left:15px;padding-right:15px;">
                <table id="generalInfos" class="table table-bordered table-condensed" >
                    <tr>
                        <td>Source file</td>
                        <td>${testFile!""}</td>
                    </tr>
                    <tr>
                        <td>Start Time</td>
                        <td>${beginDate!""}</td>
                    </tr>
                    <tr>
                        <td>End Time</td>
                        <td>${endDate!""}</td>
                    </tr>
                    <#if overallFilter?has_content>
                    <tr>
                        <td>Filter for computing</td>
                        <td>${overallFilter}</td>
                    </tr>
                    </#if>
                    <#if seriesFilter?has_content>
                    <tr>
                        <td>Filter for display</td>
                        <td>${seriesFilter}</td>
                    </tr>
                    </#if>
                </table>
            </div>
        </div>
    </div>
</#macro>
<#macro createTable tableId title col m>
            <div class="col-lg-${col}">
                <div class="panel panel-default" style="text-align:center;border:1px solid;border-color: rgb(221, 221, 221);">
                    <div class="panel-heading" style="color: #333;background-color: #f5f5f5;border-color: #ddd;">
                       <p class="dashboard-title" style="font-weight: bold;color: darkslategrey;font-size: 20px;margin-top: -5px;">${title}</p>
                    </div>
                    <div class="panel-body" style="padding-left:15px;padding-right:15px;">
                        <section class="col-md-${col} table-responsive">
                            <table id="${tableId}" class="table table-bordered table-condensed tablesorter">
                                <thead>
                                    <tr style="font:12px/18px Arial, Sans-serif;color:#000;background-color:#99bfe6;">
                                    <#list m.titles as title>
                                    <th>${title}</th>
                                    </#list>
                                    </tr>
                                </thead>
                                <tbody>
                                    <#if m.overall??>
                                        <tr>
                                            <#list m.overall.data as cell>
                                                <td><b>${cell}</b></td>
                                            </#list>
                                        </tr>
                                    </#if>
                                    <#list m.items as element>
                                    <tr>
                                        <#list element.data as cell>
                                            <td>${cell}</td>
                                        </#list>
                                    </tr>
                                    </#list>
                                </tbody>
                            </table>
                        </section>
                    </div>
                </div>
            </div>
</#macro>
