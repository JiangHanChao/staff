/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: jetty/9.4.7.v20170914
 * Generated at: 2018-04-17 15:13:41 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_005fv3_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(10);
    _jspx_dependants.put("jar:file:/D:/Apache-maven/repository/javax/servlet/jstl/1.2/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153356282000L));
    _jspx_dependants.put("file:/D:/Apache-maven/repository/org/apache/taglibs/taglibs-standard-impl/1.2.5/taglibs-standard-impl-1.2.5.jar", Long.valueOf(1521160755016L));
    _jspx_dependants.put("jar:file:/D:/Apache-maven/repository/javax/servlet/jstl/1.2/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153356282000L));
    _jspx_dependants.put("file:/D:/Apache-maven/repository/org/springframework/security/spring-security-taglibs/4.2.3.RELEASE/spring-security-taglibs-4.2.3.RELEASE.jar", Long.valueOf(1521159456254L));
    _jspx_dependants.put("jar:file:/D:/Apache-maven/repository/org/springframework/spring-webmvc/4.3.9.RELEASE/spring-webmvc-4.3.9.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1496833942000L));
    _jspx_dependants.put("jar:file:/D:/Apache-maven/repository/org/springframework/security/spring-security-taglibs/4.2.3.RELEASE/spring-security-taglibs-4.2.3.RELEASE.jar!/META-INF/security.tld", Long.valueOf(1496866852000L));
    _jspx_dependants.put("file:/D:/Apache-maven/repository/javax/servlet/jstl/1.2/jstl-1.2.jar", Long.valueOf(1521132212319L));
    _jspx_dependants.put("jar:file:/D:/Apache-maven/repository/org/springframework/spring-webmvc/4.3.9.RELEASE/spring-webmvc-4.3.9.RELEASE.jar!/META-INF/spring.tld", Long.valueOf(1496833942000L));
    _jspx_dependants.put("jar:file:/D:/Apache-maven/repository/org/apache/taglibs/taglibs-standard-impl/1.2.5/taglibs-standard-impl-1.2.5.jar!/META-INF/c.tld", Long.valueOf(1425949870000L));
    _jspx_dependants.put("file:/D:/Apache-maven/repository/org/springframework/spring-webmvc/4.3.9.RELEASE/spring-webmvc-4.3.9.RELEASE.jar", Long.valueOf(1521159711738L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"renderer\" content=\"webkit\">\n");
      out.write("    <meta http-equiv=\"Cache-Control\" content=\"no-siteapp\" />\n");
      out.write("    <title>H+ 后台主题UI框架 - 主页</title>\n");
      out.write("\n");
      out.write("    <meta name=\"keywords\" content=\"H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台\">\n");
      out.write("    <meta name=\"description\" content=\"H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术\">\n");
      out.write("\n");
      out.write("    <!--[if lt IE 8]>\n");
      out.write("    <meta http-equiv=\"refresh\" content=\"0;ie.html\" />\n");
      out.write("    <![endif]-->\n");
      out.write("\n");
      out.write("    <link rel=\"shortcut icon\" href=\"favicon.ico\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/css/bootstrap.min.css?v=3.3.5\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/css/font-awesome.min.css?v=4.4.0\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/css/style.min.css?v=4.0.0\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("<body class=\"gray-bg\">\n");
      out.write("\t<div class=\"wrapper wrapper-content animated fadeInRight\">\n");
      out.write("        <div class=\"row\">\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"wrapper wrapper-content\">\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/jquery.min.js?v=2.1.4\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/bootstrap.min.js?v=3.3.5\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/flot/jquery.flot.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/flot/jquery.flot.tooltip.min.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/flot/jquery.flot.spline.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/flot/jquery.flot.resize.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/flot/jquery.flot.pie.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/flot/jquery.flot.symbol.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/peity/jquery.peity.min.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/demo/peity-demo.min.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/content.min.js?v=1.0.0\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/jquery-ui/jquery-ui.min.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/easypiechart/jquery.easypiechart.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/plugins/sparkline/jquery.sparkline.min.js\"></script>\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${ctx }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/res/hplus/js/demo/sparkline-demo.min.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function(){$(\".chart\").easyPieChart({barColor:\"#f8ac59\",scaleLength:5,lineWidth:4,size:80});$(\".chart2\").easyPieChart({barColor:\"#1c84c6\",scaleLength:5,lineWidth:4,size:80});var data2=[[gd(2012,1,1),7],[gd(2012,1,2),6],[gd(2012,1,3),4],[gd(2012,1,4),8],[gd(2012,1,5),9],[gd(2012,1,6),7],[gd(2012,1,7),5],[gd(2012,1,8),4],[gd(2012,1,9),7],[gd(2012,1,10),8],[gd(2012,1,11),9],[gd(2012,1,12),6],[gd(2012,1,13),4],[gd(2012,1,14),5],[gd(2012,1,15),11],[gd(2012,1,16),8],[gd(2012,1,17),8],[gd(2012,1,18),11],[gd(2012,1,19),11],[gd(2012,1,20),6],[gd(2012,1,21),6],[gd(2012,1,22),8],[gd(2012,1,23),11],[gd(2012,1,24),13],[gd(2012,1,25),7],[gd(2012,1,26),9],[gd(2012,1,27),9],[gd(2012,1,28),8],[gd(2012,1,29),5],[gd(2012,1,30),8],[gd(2012,1,31),25]];var data3=[[gd(2012,1,1),800],[gd(2012,1,2),500],[gd(2012,1,3),600],[gd(2012,1,4),700],[gd(2012,1,5),500],[gd(2012,1,6),456],[gd(2012,1,7),800],[gd(2012,1,8),589],[gd(2012,1,9),467],[gd(2012,1,10),876],[gd(2012,1,11),689],[gd(2012,1,12),700],[gd(2012,1,13),500],[gd(2012,1,14),600],[gd(2012,1,15),700],[gd(2012,1,16),786],[gd(2012,1,17),345],[gd(2012,1,18),888],[gd(2012,1,19),888],[gd(2012,1,20),888],[gd(2012,1,21),987],[gd(2012,1,22),444],[gd(2012,1,23),999],[gd(2012,1,24),567],[gd(2012,1,25),786],[gd(2012,1,26),666],[gd(2012,1,27),888],[gd(2012,1,28),900],[gd(2012,1,29),178],[gd(2012,1,30),555],[gd(2012,1,31),993]];var dataset=[{label:\"订单数\",data:data3,color:\"#1ab394\",bars:{show:true,align:\"center\",barWidth:24*60*60*600,lineWidth:0}},{label:\"付款数\",data:data2,yaxis:2,color:\"#464f88\",lines:{lineWidth:1,show:true,fill:true,fillColor:{colors:[{opacity:0.2},{opacity:0.2}]}},splines:{show:false,tension:0.6,lineWidth:1,fill:0.1},}];var options={xaxis:{mode:\"time\",tickSize:[3,\"day\"],tickLength:0,axisLabel:\"Date\",axisLabelUseCanvas:true,axisLabelFontSizePixels:12,axisLabelFontFamily:\"Arial\",axisLabelPadding:10,color:\"#838383\"},yaxes:[{position:\"left\",max:1070,color:\"#838383\",axisLabelUseCanvas:true,axisLabelFontSizePixels:12,axisLabelFontFamily:\"Arial\",axisLabelPadding:3},{position:\"right\",clolor:\"#838383\",axisLabelUseCanvas:true,axisLabelFontSizePixels:12,axisLabelFontFamily:\" Arial\",axisLabelPadding:67}],legend:{noColumns:1,labelBoxBorderColor:\"#000000\",position:\"nw\"},grid:{hoverable:false,borderWidth:0,color:\"#838383\"}};function gd(year,month,day){return new Date(year,month-1,day).getTime()}var previousPoint=null,previousLabel=null;$.plot($(\"#flot-dashboard-chart\"),dataset,options);var mapData={\"US\":298,\"SA\":200,\"DE\":220,\"FR\":540,\"CN\":120,\"AU\":760,\"BR\":550,\"IN\":200,\"GB\":120,};$(\"#world-map\").vectorMap({map:\"world_mill_en\",backgroundColor:\"transparent\",regionStyle:{initial:{fill:\"#e4e4e4\",\"fill-opacity\":0.9,stroke:\"none\",\"stroke-width\":0,\"stroke-opacity\":0}},series:{regions:[{values:mapData,scale:[\"#1ab394\",\"#22d6b1\"],normalizeFunction:\"polynomial\"}]},})});\n");
      out.write("    </script>\n");
      out.write("    <script type=\"text/javascript\" src=\"http://tajs.qq.com/stats?sId=9051096\" charset=\"UTF-8\"></script>\n");
      out.write("    <script>\n");
      out.write("\t$('.subTabs li').click(function(){\n");
      out.write("\t\t$('.subTabs li.active').removeClass('active');\n");
      out.write("\t\t$(this).addClass('active');\n");
      out.write("\t\tvar type = $(this).data('type');\n");
      out.write("\t\tvar target = $(this).attr('target');\n");
      out.write("\t\t$('.tab-pane.active').removeClass('active');\n");
      out.write("\t\t$('#' + target).addClass('active');\n");
      out.write("\t});\n");
      out.write("\t$('.subTabs li').eq(0).trigger('click');\n");
      out.write("\t</script>\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
