<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>首页${(jshopbasicinfo.jshopname)}</title>
<meta name="Author" content="OSTOCY">
<meta name="Copyright" content="OSTOCY">
<meta http-equiv="expires" content="0">
<#if (jshopbasicinfo.metaKeywords)! != "">
<meta name="keywords" content="${jshopbasicinfo.metaKeywords}"/>
</#if>
	<#if (jshopbasicinfo.metaDes)! != "">
<meta name="description" content="${jshopbasicinfo.metaDes}"/>
</#if>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="${basepath}/ui/default/css/global.css" />
<link rel="stylesheet" type="text/css" href="${basepath}/ui/default/css/index.css" />
<link rel="stylesheet" type="text/css" href="${basepath}/ui/default/css/category.css" />
<link rel="stylesheet" type="text/css" href="${basepath}/ui/default/js/easyslider1.7/css/screen.css"/>
<script type="text/javascript"  src="${basepath}/ui/default/js/jquery-1.6.2.min.js"></script>
<script type="text/javascript" src="${basepath}/ui/default/js/easyslider1.7/js/easySlider1.7.js"></script>
<script type="text/javascript" src="${basepath}/ui/default/js/jquery.query.js"></script>
</head><body onload="findUsernameSession();">
<!--载入公共头文件-->
<#include "/WEB-INF/theme/default/shop/header.ftl">
<div id="main">
  <div class="content mt7">
    <div class="mainleft">
      <div style="height:226px">
        <div class="category" >
          <ul  id="categoryvalue">
            <#list goodscategorytree as firstGoodsCategory>
            <#if (firstGoodsCategory.grade=='0')&&(firstGoodsCategory.htmlpath! !='')>
            <li><a target='_blank' href="${basepath}/${firstGoodsCategory.htmlpath}">${firstGoodsCategory.name}</a>
              <div class="cms_submenu">
                <div class="cmsmenuleft">
                  <dl class="menu_recommend">
                    <dt>热门类目</dt>
                    <dd> <#list goodscategorytree as secondGoodsCategory>
                      <#if secondGoodsCategory.parentId! !="">
                      <#if secondGoodsCategory.parentId=firstGoodsCategory.goodsCategoryTid>
                      <#if secondGoodsCategory.htmlpath! !=""> <a href="${basepath}/<@secondGoodsCategory.htmlpath?interpret />">${secondGoodsCategory.name}</a> </#if>
                      </#if>
                      </#if>
                      </#list> </dd>
                    <div class="clear"></div>
                  </dl>
                  <dl class="menu_price">
                    <div class="clear"></div>
                  </dl>
                  <dl class="menu_new">
                  </dl>
                </div>
                <div class="cmsmenuright">
                  <dl>
                  </dl>
                </div>
              </div>
            </li>
			<#if firstGoodsCategory_index+1==goodscategorytreefirstcount>
            <#break/>
            </#if>
           
            </#if>
            </#list>
          </ul>
        </div>
      </div>
      <div class="hongfentuan mt7">
		
		<div class="groupbuy">
		<img width="208" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120406044512909.jpg" style="display: inline; ">
         <!--  <div class="groupbuy_time"> 剩余<span id="hour">20</span>时<span id="minute">13</span>分<span id="second">28</span>秒 </div>
          <script type="text/javascript">saleTimer(-330352615,72847385);
		    </script>
          <div class="groupbuy_pic"><a href="#" target="_blank"><img src="${basepath}/ui/default/images/227308_1_pic100_47.jpg"></a></div>
          <div class="groupbuy_name"><a href="#" target="_blank">柯达（kodak）Playfull 高清</a></div>
          <a class="groupbuy_price" href="#">
          <p>￥<span>399</span><code>.00</code></p>
          </a> -->
		</div>
        <div class="groupbuy" style="border-top:#e0e0e0 solid 1px;">
		<img width="208" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120406041435454.jpg" style="display: inline; ">
<!--           <div class="groupbuy_time" style="width:168px;float:left;margin:6px 0 0 0;color:#484848;padding:0 0 0 40px;"> 剩余<span id="hour2">44</span>时<span id="minute2">13</span>分<span id="second2">28</span>秒 </div>
          <script type="text/javascript">saleTimer(-99952617,159247383);
		    </script>
          <div class="groupbuy_pic"><a href="#" target="_blank"><img src="${basepath}/ui/default/images/251671_1_pic100_9546.jpg"></a></div>
          <div class="groupbuy_name"><a href="#" target="_blank">飞利浦（Philips）HD2060/0</a></div>
          <a class="groupbuy_price" href="#">
          <p>￥<span>359</span><code>.00</code></p>
          </a>  --></div>
      </div>
      <div class="clear"></div>
      <div class="homeleftad mt7"> <a href=""></a><a href="#" target="_blank"><img width="210" height="140" alt="" border="0" src="${basepath}/ui/default/images/20120331044355757.jpg" style="display: inline; "></a> </div>
      <div class="homeleftad mt7"> <a href=""></a><a href="#" target="_blank"><img  width="210" height="140" alt="" border="0" src="${basepath}/ui/default/images/20120331044517632.jpg" style="display: inline; "></a> </div>
      <div class="homeleftad mt7"> <a href=""></a><a href="#" target="_blank"><img width="210" height="140" alt="" border="0" src="${basepath}/ui/default/images/20120331044545149.jpg" style="display: inline; "></a> </div>
    </div>
    <div class="mainright">
      <div class="mainright_l">
        <div class="focus">
          <div style="WIDTH: 100%; TEXT-ALIGN: right">
            <div id="edit4"> <#if p4! !="">
              <div id="container">
                <div id="content">
                  <div id="area4">
                    <div id="slider">
                      <ul>
                        ${p4.editareavalue}
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              </#if> </div>
          </div>
        </div>
        <div class="special mt7">
          <h1>
            <p></p>
            <div class="rightdiv1_tab weekpro_title">
              <div class="weekpro_tab" onmouseover="show1();" id="u11">1</div>
              |
              <div class="weekpro_tab" onmouseover="show2();" id="u22">2</div>
              |
              <div class="weekpro_tab now" onmouseover="show3();" id="u33">3</div>
            </div>
          </h1>
          <div class="inner_box">
            <ul id="u1" style="display: none; ">
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>311.00</strong></p>
                </div>
                <div class="casepic">
                <div class="casename"> 诺基亚（Nokia）N2220S GSM手机（蓝色) 非移动定制机 <span class="text_bold"></span> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>169.00</strong></p>
                </div>
                <div class="casepic"> </div>
                <div class="casename">  </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>2899.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"></div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>225.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename">  </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>1909.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename">  </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>5599.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"> </div>
              </li>
            </ul>
            <ul style="display: none; " id="u2">
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>1096.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>2429.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>5639.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename">  </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>3799.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>1279.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>3955.00</strong></p>
                </div>
                <div class="casepic"></div>
                <div class="casename"></div>
              </li>
            </ul>
            <ul style="display: block; " id="u3">
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>7,600</strong></p>
                </div>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"><img  border="0" alt="戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑" src="${basepath}/Uploads/20120516/2012051618114993350.jpg" width="130" height="130"></a></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"> <span class="text_bold">下单立减300！赠原装内存 兼容性极强哦~500G大硬盘，商务办公首选，稳定！超轻薄 7300可以入手！秒杀发货！ </span>戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑</a> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>1,460</strong></p>
                </div>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051600355.html" target="_blank"><img border="0"  width="130" height="130" alt="智器（SmartQ）Ten19 8G 平板电脑（黑色 10.1英寸 IPS屏 Android 4.0系统）" src="${basepath}/Uploads/20120516/2012051611453844954.jpg"></a></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051600355.html" target="_blank"> <span style="font-size: 12px"><span style="font-family: 宋体">智器</span></span><span style="font-size: 12px"><span style="font-family: Tahoma">（SmartQ）Ten19 8G </span></span><span style="font-size: 12px"><span style="font-family: 宋体">智平板电脑</span></span>（<span style="font-size: 12px"><span style="font-family: Tahoma"></a> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>1,899</strong></p>
                </div>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img border="0" width="130" height="130" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" src="${basepath}/Uploads/20120516/2012051621383672922.jpg"></a></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> <span class="text_bold"> </span> <span style="font-size: 12px"><span style="font-family: 宋体">希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色 </span></span> </a> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>2,100</strong></p>
                </div>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051600358.html" target="_blank"><img  width="130" height="130" border="0" alt="小米（MI）MI-ONE Plus 3G手机" src="${basepath}/Uploads/20120516/2012051619124098351.jpg"></a></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051600358.html" target="_blank"> <span class="text_bold">销售冠军产品 特价促销 赶快抢货哦！ </span> <span style="font-size: 12px"><span style="font-family: 宋体">小米（MI）MI-ONE Plus 3G手机</span></span> </a> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>12,900</strong></p>
                </div>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051600356.html" target="_blank"><img   width="130" height="130"border="0" alt="索尼（SONY） SLT-A77Q单镜头单电套机（DT16-50mm F2.8 SSM）" src="${basepath}/Uploads/20120516/2012051616402025200.JPG"></a></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051600356.html" target="_blank"> <span style="font-size: 12px"><span style="font-family: 宋体">索尼（SONY） SLT-A77Q单镜头单电套机（DT16-50mm F2.8 SSM）</span></span> <span class="text_bold"></span> </a> </div>
              </li>
              <li>
                <div class="caseprice">
                  <p><strong><span>￥</span>1,498</strong></p>
                </div>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051700366.html" target="_blank"><img  width="130" height="130" border="0" alt="北美电器（ACA） AB-PN6810 1000g 面包机（白色）" src="${basepath}/Uploads/20120517/2012051710050067478.jpg"></a></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051700366.html" target="_blank"> <span style="font-size: 12px"><span style="font-family: 宋体">北美电器（ACA） AB-PN6810 1000g 面包机（白色）/span></span> <span class="text_bold"></span> </a> </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="hotsale mt7">
          <h1>
            <p></p>
            <div class="rightdiv1_tab weekpro_title">
              <div class="weekpro_tab hotpro_tab" id="v11" onmouseover="show11();">1</div>
              |
              <div class="weekpro_tab hotpro_tab" id="v22" onmouseover="show22();">2</div>
              |
              <div class="weekpro_tab hotpro_tab now" id="v33" onmouseover="show33();">3</div>
            </div>
          </h1>
          <div class="inner_box">
            <ul id="v1" style="display: none; ">
              <li>
                <div class="casepic"></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>3099.00</strong></div>
                <div class="casename"> > </div>
              </li>
              <li>
                <div class="casepic"></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>299.00</strong></div>
                <div class="casename"> </div>
              </li>
              <li>
                <div class="casepic"></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>88.00</strong></div>
                <div class="casename"></a> </div>
              </li>
            </ul>
            <ul id="v2" style="display: none; ">
              <li>
                <div class="casepic"></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>3599.00</strong></div>
                <div class="casename"></a> </div>
              </li>
              <li>
                <div class="casepic"></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>1499.00</strong></div>
                <div class="casename"></span> </a> </div>
              </li>
              <li>
                <div class="casepic"></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>288.00</strong></div>
                <div class="casename">  </div>
              </li>
            </ul>
            <ul id="v3" style="display: block; ">
              <li>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" src="${basepath}/Uploads/20120516/2012051622003121137.jpg" width="130px" height="130px"></a></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>99.00</strong></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> <span style="font-size: 12px"><span style="font-family: 宋体">九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</span></span> <span class="text_bold"></span> </a> </div>
              </li>
              <li>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img  border="0" alt="飞利浦（Philips）HD4622/20 电水壶（金属色）" src="${basepath}/Uploads/20120517/2012051708544770640.jpg" width="130px" height="130px"></a></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>428.00</strong></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"> <span style="font-size: 12px"><span style="font-family: 宋体">飞利浦（Philips）HD4622/20 电水壶（金属色）</span></span> <span class="text_bold">网络热销品 给力发售</span> </a> </div>
              </li>
              <li>
                <div class="casepic"><a href="${basepath}/html/default/shop/2012051700365.html" target="_blank"><img  border="0" alt="美的（Midea） RT2102 触摸式 电磁炉" src="${basepath}/Uploads/20120517/2012051709480982668.jpg" width="130px" height="130px"></a></div>
                <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>299</strong></div>
                <div class="casename"> <a href="${basepath}/html/default/shop/2012051700365.html" target="_blank"> <span style="font-size: 12px"><span style="font-family: 宋体">美的（Midea） RT2102 触摸式 电磁炉</span></span> <span class="text_bold"></span> </a> </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="mainright_r">
        <div class="board">
          <h1> <a href="#" target="_blank">更多</a> </h1>
		  <#if (article??)&&(article?size>0) >
			<ul>
			<#list article as a>
			<#if a.isnotice=="1">
			<li> <a href="${basepath}/<@a.htmlPath?interpret />" target="_blank">${a.title}</a> </li>
			<#if a_index+1==5>
			<#break/>
			</#if>
			</#if>
			</#list>
			</ul>
		  </#if>
          <div class="clear"></div>
        </div>
        <div class="mainright_div1wrap mt7">
          <div> <a href="http:#" target="_blank"> <img  src="${basepath}/ui/default/images/199x150_0210.jpg"> </a> </div>
          <div class="youlike">
            <h1></h1>
            <ul>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"><img  border="0" alt="戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑" width="40" height="40" src="${basepath}/Uploads/20120516/2012051618114993350.jpg"></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank">戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051600356.html" target="_blank"><img  border="0" alt="索尼（SONY） SLT-A77Q单镜头单电套机" width="40" height="40" src="${basepath}/Uploads/20120516/2012051616402025200.JPG"></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051600356.html" target="_blank">索尼（SONY） SLT-A77Q单镜头单电套机</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051600355.html" target="_blank"><img  border="0" alt="智器（SmartQ）Ten19 8G 平板电脑" width="40" height="40" src="${basepath}/Uploads/20120516/2012051611453844954.jpg"></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051600355.html" target="_blank">智器（SmartQ）Ten19 8G 平板电脑</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img  border="0" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" width="40" height="40" src="${basepath}/Uploads/20120516/2012051621383672922.jpg"></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank">希捷睿品3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051700366.html" target="_blank"><img  border="0" alt=" 北美电器（ACA） AB-PN6810 1000g 面包机" width="40" height="40" src="${basepath}/Uploads/20120517/2012051710050067478.jpg" style="display: inline; "></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051700366.html" target="_blank"> 北美电器（ACA） AB-PN6810 1000g 面包机</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051600358.html" target="_blank"><img  border="0" alt=" 小米（MI）MI-ONE Plus 3G手机" width="40" height="40" src="${basepath}/Uploads/20120516/2012051619124098351.jpg" style="display: inline; "></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051600358.html" target="_blank"> 小米（MI）MI-ONE Plus 3G手机</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051700365.html" target="_blank"><img  border="0" alt="美的（Midea） RT2102 触摸式 电磁炉" width="40" height="40" src="${basepath}/Uploads/20120517/2012051709480982668.jpg" style="display: inline; "></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051700365.html" target="_blank">美的（Midea） RT2102 触摸式 电磁炉</a></div>
              </li>
              <li>
                <div class="youlikepic"><a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img  border="0" alt="飞利浦（Philips）HD4622/20 电水壶（金属色）" width="40" height="40" src="${basepath}/Uploads/20120517/2012051708544770640.jpg" style="display: inline; "></a></div>
                <div class="youlikename"><a href="${basepath}/html/default/shop/2012051700361.html" target="_blank">飞利浦（Philips）HD4622/20 电水壶（金属色）</a></div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="mainright">
      <div class="newcase mt7">
        <h1>
          <p></p>
          <div class="rightdiv1_tab weekpro_title"> <span class="weekpro_tab newpro_tab now" id="w11" onmouseover="show111();">1</span>| <span class="weekpro_tab newpro_tab" id="w22" onmouseover="show222();">2</span>| <span class="weekpro_tab newpro_tab" id="w33" onmouseover="show333();">3</span></div>
        </h1>
        <div class="inner_box">
          <div class="newcase_left">
            <div class="newcase_l_pic">
              <div class="bigpic"> <a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img id="midImg_0"  class="jqzoom" bigpath="${basepath}/Uploads/20120517/2012051708544770640.jpg" src="${basepath}/Uploads/20120517/2012051708544770640.jpg" style="display: inline;"  width="130px" height="130px"></a> <a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img id="midImg_1" style="display:none"  class="jqzoom" bigpath="${basepath}/Uploads/20120517/2012051708545142638.jpg" src="${basepath}/Uploads/20120517/2012051708545142638.jpg"></a> <a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img id="midImg_2" style="display:none"  class="jqzoom" bigpath="${basepath}/Uploads/20120517/2012051708545556505.jpg" src="${basepath}/Uploads/20120517/2012051708545556505.jpg"></a> <a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img id="midImg_3" style="display:none"  class="jqzoom" bigpath="${basepath}/Uploads/20120517/2012051708545580485.jpg" src="${basepath}/Uploads/20120517/2012051708545580485.jpg"></a> </div>
              <div class="smallpic">
                <p class="current" id="img60_0" onmouseover="selectImg(0);"><a><img  border="0" alt="" width="30" height="30" src="${basepath}/Uploads/20120517/2012051708544770640.jpg" style="display: inline; "></a></p>
                <p class="other" id="img60_1" onmouseover="selectImg(1);"><a><img  border="0" alt="" width="30" height="30" src="${basepath}/Uploads/20120517/2012051708545142638.jpg" style="display: inline; "></a></p>
                <p class="other" id="img60_2" onmouseover="selectImg(2);"><a><img  border="0" alt="" width="30" height="30" src="${basepath}/Uploads/20120517/2012051708545556505.jpg" style="display: inline; "></a></p>
                <p class="other" id="img60_3" onmouseover="selectImg(3);"><a><img  border="0" alt="" width="30" height="30" src="${basepath}/Uploads/20120517/2012051708545580485.jpg" style="display: inline; "></a></p>
              </div>
            </div>
            <div class="newcase_l_text">
              <div class="newcase_l_name"><a href="${basepath}/html/default/shop/2012051700361.html" target="_blank">飞利浦（Philips）HD4622/20 电水壶（金属色）</a></div>
              <div class="newcase_l_price"><cite>塔克价：</cite><strong> ￥428 </strong></div>
              <div class="newcase_l_info"><a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"> 此设计时尚的紧凑型金属电水壶特有 “ 一杯量指示器 ” 功能，允许您仅煮沸所需的水。因此，您可以轻松节省多达 66% 能源，从而减少对环境的影响 </a></div>
            </div>
          </div>
          <ul id="w1" style="display: block; ">
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"><img  border="0" alt="戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑" width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051618114993350.jpg"></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"> 戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑 <span class="text_bold"></span> </a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>7,600</strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600355.html" target="_blank"><img  border="0" alt="智器（SmartQ）Ten19 8G 平板电脑（黑色 10.1英寸 IPS屏 Android 4.0系统）"  width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051611453844954.jpg"></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600355.html" target="_blank">智器（SmartQ）Ten19 8G 平板电脑（黑色 10.1英寸 IPS屏 Android 4.0系统） <span class="text_bold">  </span> </a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>1,460</strong></div>
            </li>
          </ul>
          <ul id="w2" style="display: none; ">
            <li>
              <div class="casepic"></div>
              <div class="casename">  </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>499.00</strong></div>
            </li>
            <li>
              <div class="casepic"></div>
              <div class="casename"> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>155.00</strong></div>
            </li>
          </ul>
          <ul id="w3" style="display: none; ">
            <li>
              <div class="casepic"></div>
              <div class="casename"> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>1259.00</strong></div>
            </li>
            <li>
              <div class="casepic"></div>
              <div class="casename"></div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>3599.00</strong></div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="homepage_b_div1 mt15">
      <h1 class="computer">
        <p></p>
        <cite> <a href=#" target="_blank">移动硬盘</a> | <a href="#" target="_blank">Thinkpad旗舰店</a> | <a href="#" target="_blank">无线鼠标</a> | <a href="#" target="_blank">联想乐pad</a> </cite> </h1>
      <div class="bottom_div">
        <div class="ad_div"> <a href=""></a><a href="#" target="_blank"><img  width="210" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120406044512909.jpg" style="display: inline; "></a> </div>
        <div class="caselist">
          <ul>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600355.html" target="_blank"><img  border="0" alt="智器（SmartQ）Ten19 8G 平板电脑（黑色 10.1英寸 IPS屏 Android 4.0系统）" width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051611453844954.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600355.html" target="_blank">智器（SmartQ）Ten19 8G 平板电脑（黑色 10.1英寸 IPS屏 Android 4.0系统）</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 1,460 </strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"><img  border="0" alt="戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑 " width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051618114993350.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600357.html" target="_blank">戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑 </a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 7,600 </strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img  border="0" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051621383672922.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600359.html" target="_blank">希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 1,899 </strong></div>
            </li>
          </ul>
        </div>
        <div class="top5">
          <div class="toplist">
            <div class="top10_2 border_bottom show" id="pc214504a" name="74700a">
              <div class="top10_2_number1"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank"><img  border="0" alt="戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑   " src="${basepath}/Uploads/20120516/2012051618114993350.jpg" style="display: inline; width="50px" height="50px" "></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank">
                <p>戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑  </p>
                </a></div>
              <div class="top10_2_price"><strong><span>￥</span>7,600</strong></div>
            </div>
            <div class="top10_2_other  border_bottom hidden" onmouseover="showcommend(74700,214504);" id="pc214504b" name="74700b">
              <div class="top10_2_o_number1"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600357.html" target="_blank">
                <p>戴尔（DELL）XPS14Z--328S 14英寸笔记本电脑 </p>
                </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc251630a" name="74700a">
              <div class="top10_2_number2"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img  border="0" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" src="${basepath}/Uploads/20120516/2012051621383672922.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
              <div class="top10_2_price"><strong><span>￥</span>1,899</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(74700,251630);" id="pc251630b" name="74700b">
              <div class="top10_2_o_number2"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc251630a" name="74700a">
              <div class="top10_2_number3"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img  border="0" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" src="${basepath}/Uploads/20120516/2012051621383672922.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
              <div class="top10_2_price"><strong><span>￥</span>1,899</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(74700,251630);" id="pc251630b" name="74700b">
              <div class="top10_2_o_number3"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc251630a" name="74700a">
              <div class="top10_2_number4"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img  border="0" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" src="${basepath}/Uploads/20120516/2012051621383672922.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
              <div class="top10_2_price"><strong><span>￥</span>1,899</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(74700,251630);" id="pc251630b" name="74700b">
              <div class="top10_2_o_number4"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc251630a" name="74700a">
              <div class="top10_2_number5"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"><img  border="0" alt="希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色" src="${basepath}/Uploads/20120516/2012051621383672922.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
              <div class="top10_2_price"><strong><span>￥</span>1,899</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(74700,251630);" id="pc251630b" name="74700b">
              <div class="top10_2_o_number5"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600359.html" target="_blank"> 希捷（Seagate）GoFlex Desk 睿品 STAC4000300 3.5英寸 4TB外置硬盘（USB3.0）黑色</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="homepage_b_div1 mt15">
      <h1 class="moblie">
        <p></p>
        <cite> <a href="#" target="_blank">单反</a> | <a href="#" target="_blank">安卓手机</a> | <a href="#" target="_blank">iphone</a> | <a href="#" target="_blank">htc</a> </cite> </h1>
      <div class="bottom_div">
        <div class="ad_div"> <a href=""></a><a href="#" target="_blank"><img  width="210" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120406041435454.jpg" style="display: inline; "></a> </div>
        <div class="caselist">
          <ul>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600358.html" target="_blank"><img  border="0" alt="小米（MI）MI-ONE Plus 3G手机" width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051619124098351.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600358.html" target="_blank">小米（MI）MI-ONE Plus 3G手机</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>2,100</strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600356.html" target="_blank"><img  border="0" alt="索尼（SONY） SLT-A77Q单镜头单电套机（DT16-50mm F2.8 SSM）" width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051616402025200.JPG" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600356.html" target="_blank">索尼（SONY） SLT-A77Q单镜头单电套机（DT16-50mm F2.8 SSM）</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 12,900 </strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"><img  border="0" alt="柯达（kodak）Playfull 高清手持摄像机（蓝紫色）"width="130px" height="130px" src="${basepath}/Uploads/20120521/2012052120530645976.JPG" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012052100370.html" target="_blank">柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 388</strong></div>
            </li>
          </ul>
        </div>
        <div class="top5">
          <div class="toplist">
            <div class="top10_2 border_bottom show" id="pc205700a" name="1102a">
              <div class="top10_2_number1"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"><img  border="0" alt="柯达（kodak）Playfull 高清手持摄像机（蓝紫色）" src="${basepath}/Uploads/20120521/2012052120530645976.JPG" style="display: inline; "></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank">
                <p>柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</p>
                </a></div>
              <div class="top10_2_price"><strong><span>￥</span> 388</strong></div>
            </div>
            <div class="top10_2_other  border_bottom hidden" onmouseover="showcommend(1102,205700);" id="pc205700b" name="1102b">
              <div class="top10_2_o_number1"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank">
                <p>柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</p>
                </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc248322a" name="1102a">
              <div class="top10_2_number2"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"><img  border="0" alt="柯达（kodak）Playfull 高清手持摄像机（蓝紫色）" src="${basepath}/Uploads/20120521/2012052120530645976.JPG"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>388</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1102,248322);" id="pc248322b" name="1102b">
              <div class="top10_2_o_number2"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
            </div>
			<div class="top10_2 border_bottom hidden" id="pc248322a" name="1102a">
              <div class="top10_2_number3"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"><img  border="0" alt="柯达（kodak）Playfull 高清手持摄像机（蓝紫色）" src="${basepath}/Uploads/20120521/2012052120530645976.JPG"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>388</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1102,248322);" id="pc248322b" name="1102b">
              <div class="top10_2_o_number3"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
            </div>
			<div class="top10_2 border_bottom hidden" id="pc248322a" name="1102a">
              <div class="top10_2_number4"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"><img  border="0" alt="柯达（kodak）Playfull 高清手持摄像机（蓝紫色）" src="${basepath}/Uploads/20120521/2012052120530645976.JPG"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>388</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1102,248322);" id="pc248322b" name="1102b">
              <div class="top10_2_o_number4"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
            </div>
			<div class="top10_2 border_bottom hidden" id="pc248322a" name="1102a">
              <div class="top10_2_number5"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"><img  border="0" alt="柯达（kodak）Playfull 高清手持摄像机（蓝紫色）" src="${basepath}/Uploads/20120521/2012052120530645976.JPG"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>388</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1102,248322);" id="pc248322b" name="1102b">
              <div class="top10_2_o_number5"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012052100370.html" target="_blank"> 柯达（kodak）Playfull 高清手持摄像机（蓝紫色）</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="homepage_b_div1 mt15">
      <h1 class="electrical">
        <p></p>
        <cite> <a href="#" target="_blank">豆浆机</a> | <a href="#" target="_blank">挂烫机</a> | <a href="#" target="_blank">吸尘器</a> | <a href="#">电水壶</a> </cite> </h1>
      <div class="bottom_div">
        <div class="ad_div"> <a href=""></a><a href="#" target="_blank"><img  width="210" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120406041457336.jpg" style="display: inline; "></a> </div>
        <div class="caselist">
          <ul>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051700361.html" target="_blank"><img  border="0" alt="飞利浦（Philips）HD4622/20 电水壶（金属色）" src="${basepath}/Uploads/20120517/2012051708544770640.jpg" width="130px" height="130px" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051700361.html" target="_blank">飞利浦（Philips）HD4622/20 电水壶（金属色）</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 428 </strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051700366.html" target="_blank"><img  border="0" alt="北美电器（ACA） AB-PN6810 1000g 面包机（白色）" width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051710050067478.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051700366.html" target="_blank">北美电器（ACA） AB-PN6810 1000g 面包机（白色）</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 1,498 </strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" width="130px" height="130px" src="${basepath}/Uploads/20120516/2012051622003121137.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051600360.html" target="_blank">九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 99 </strong></div>
            </li>
          </ul>
        </div>
        <div class="top5">
          <div class="toplist">
            <div class="top10_2 border_bottom show" id="pc247253a" name="1103a">
              <div class="top10_2_number1"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" src="${basepath}/Uploads/20120516/2012051622003121137.jpg" style="display: inline; "></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank">
                <p>九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</p>
                </a></div>
              <div class="top10_2_price"><strong><span>￥</span>99</strong></div>
            </div>
            <div class="top10_2_other  border_bottom hidden" onmouseover="showcommend(1103,247253);" id="pc247253b" name="1103b">
              <div class="top10_2_o_number1"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank">
                <p>九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</p>
                </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250508a" name="1103a">
              <div class="top10_2_number2"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" src="${basepath}/Uploads/20120516/2012051622003121137.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>99</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1103,250508);" id="pc250508b" name="1103b">
              <div class="top10_2_o_number2"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250508a" name="1103a">
              <div class="top10_2_number3"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" src="${basepath}/Uploads/20120516/2012051622003121137.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>99</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1103,250508);" id="pc250508b" name="1103b">
              <div class="top10_2_o_number3"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250508a" name="1103a">
              <div class="top10_2_number4"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" src="${basepath}/Uploads/20120516/2012051622003121137.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>99</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1103,250508);" id="pc250508b" name="1103b">
              <div class="top10_2_o_number4"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250508a" name="1103a">
              <div class="top10_2_number5"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"><img  border="0" alt="九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）" src="${basepath}/Uploads/20120516/2012051622003121137.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
              <div class="top10_2_price"><strong><span>￥</span>99</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(1103,250508);" id="pc250508b" name="1103b">
              <div class="top10_2_o_number5"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051600360.html" target="_blank"> 九阳（Joyoung）ZD07W01EC 煮蛋器（不锈钢色）</a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--家居日用 -->
    <div class="homepage_b_div1 mt15">
      <h1 class="household">
        <p></p>
        <cite> <a href="#" target="_blank">杯具</a> | <a href="#" target="_blank">床品套件</a> | <a href="#" target="_blank">收纳</a> | <a href="#" target="_blank">优雅主妇</a> </cite> </h1>
      <div class="bottom_div">
        <div class="ad_div"> <a href=""></a><a href="#" target="_blank"><img  width="210" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120309012647739.jpg" style="display: inline; "></a> </div>
        <div class="caselist">
          <ul>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051700363.html" target="_blank"><img  border="0" alt="乐扣乐扣 HPL817S001 保鲜盒套装3件套"width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051709220050089.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051700363.html" target="_blank">乐扣乐扣 HPL817S001 保鲜盒套装3件套</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 40</strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051700362.html" target="_blank"><img  border="0" alt="爱仕达（ASD）SSQ-07C 乐家系列不锈钢七件套铲具 "width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051709124656120.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051700362.html" target="_blank">爱仕达（ASD）SSQ-07C 乐家系列不锈钢七件套铲具 </a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 79</strong></div>
            </li>
            <li>
              <div class="casepic"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"><img  border="0" alt="优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱" width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051709360729478.jpg" style="display: inline; "></a></div>
              <div class="casename"> <a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱</a> </div>
              <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span>49 </strong></div>
            </li>
          </ul>
        </div>
        <div class="top5">
          <div class="toplist">
            <div class="top10_2 border_bottom show" id="pc235411a" name="129900a">
              <div class="top10_2_number1"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"><img  border="0" alt="优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱" src="${basepath}/Uploads/20120517/2012051709360729478.jpg" style="display: inline; "></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">
                <p>优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱</p>
                </a></div>
              <div class="top10_2_price"><strong><span>￥</span>49</strong></div>
            </div>
            <div class="top10_2_other  border_bottom hidden" onmouseover="showcommend(129900,235411);" id="pc235411b" name="129900b">
              <div class="top10_2_o_number1"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">
                <p>优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱</p>
                </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250840a" name="129900a">
              <div class="top10_2_number2"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"><img  border="0" alt="优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 " src="${basepath}/Uploads/20120517/2012051709360729478.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"> 优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
              <div class="top10_2_price"><strong><span>￥</span>49</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(129900,250840);" id="pc250840b" name="129900b">
              <div class="top10_2_o_number2"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250840a" name="129900a">
              <div class="top10_2_number3"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"><img  border="0" alt="优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 " src="${basepath}/Uploads/20120517/2012051709360729478.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"> 优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
              <div class="top10_2_price"><strong><span>￥</span>49</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(129900,250840);" id="pc250840b" name="129900b">
              <div class="top10_2_o_number3"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250840a" name="129900a">
              <div class="top10_2_number4"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"><img  border="0" alt="优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 " src="${basepath}/Uploads/20120517/2012051709360729478.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"> 优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
              <div class="top10_2_price"><strong><span>￥</span>49</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(129900,250840);" id="pc250840b" name="129900b">
              <div class="top10_2_o_number4"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
            </div>
            <div class="top10_2 border_bottom hidden" id="pc250840a" name="129900a">
              <div class="top10_2_number5"></div>
              <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"><img  border="0" alt="优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 " src="${basepath}/Uploads/20120517/2012051709360729478.jpg"></a></div>
              <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank"> 优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
              <div class="top10_2_price"><strong><span>￥</span>49</strong></div>
            </div>
            <div class="top10_2_other border_bottom show" onmouseover="showcommend(129900,250840);" id="pc250840b" name="129900b">
              <div class="top10_2_o_number5"></div>
              <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700364.html" target="_blank">优雅主妇 SN-BF-04 缤纷圆点两层两抽收纳箱 </a></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 礼品箱包 -->
  <div class="homepage_b_div1 mt15">
    <h1 class="bag">
      <p></p>
      <cite> <a href="#" target="_blank">拉杆箱</a> | <a href="#" target="_blank">商务用包</a> | <a href="#" target="_blank">定制礼品</a> </cite> </h1>
    <div class="bottom_div">
      <div class="ad_div"> <a href=""></a><a href="#" target="_blank"><img  width="210" height="215" alt="" border="0" src="${basepath}/ui/default/images/20120202022407899.jpg" style="display: inline; "></a> </div>
      <div class="caselist">
        <ul>
          <li>
            <div class="casepic"><a href="${basepath}/html/default/shop/2012051700367.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）休闲斜挎单肩包 X2084-E（湖蓝）" width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051711084452584.jpg" style="display: inline; "></a></div>
            <div class="casename"> <a href="${basepath}/html/default/shop/2012051700367.html" target="_blank">观达（Guidar）公文包 1104-1-A</a> </div>
            <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 110 </strong></div>
          </li>
          <li>
            <div class="casepic"><a href="${basepath}/html/default/shop/2012051700369.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）休闲斜挎包 X2079-E（军绿）" width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051711210888503.jpg" style="display: inline; "></a></div>
            <div class="casename"> <a href="${basepath}/html/default/shop/2012051700369.html" target="_blank">艾勒蒂沃（ELETTIVO）休闲斜挎包 X2079-E（军绿）</a> </div>
            <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 110 </strong></div>
          </li>
          <li>
            <div class="casepic"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）" width="130px" height="130px" src="${basepath}/Uploads/20120517/2012051711171988283.jpg" style="display: inline; "></a></div>
            <div class="casename"> <a href="${basepath}/html/default/shop/2012051700368.html" target="_blank">艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a> </div>
            <div class="caseprice"><cite>塔克价：</cite><strong><span>￥</span> 189 </strong></div>
          </li>
        </ul>
      </div>
      <div class="top5">
        <div class="toplist">
          <div class="top10_2 border_bottom show" id="pc226519a" name="129901a">
            <div class="top10_2_number1"></div>
            <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"><img  border="0" alt="保罗（POLO）短款钱包（00A15130-7-1）" src="${basepath}/Uploads/20120517/2012051711171988283.jpg" style="display: inline; "></a></div>
            <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank">
              <p>艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</p>
              </a></div>
            <div class="top10_2_price"><strong><span>￥</span>189</strong></div>
          </div>
          <div class="top10_2_other  border_bottom hidden" onmouseover="showcommend(129901,226519);" id="pc226519b" name="129901b">
            <div class="top10_2_o_number1"></div>
            <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank">
              <p>艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</p>
              </a></div>
          </div>
          <div class="top10_2 border_bottom hidden" id="pc250421a" name="129901a">
            <div class="top10_2_number2"></div>
            <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）" src="${basepath}/Uploads/20120517/2012051711171988283.jpg"></a></div>
            <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
            <div class="top10_2_price"><strong><span>￥</span>189</strong></div>
          </div>
          <div class="top10_2_other border_bottom show" onmouseover="showcommend(129901,250421);" id="pc250421b" name="129901b">
            <div class="top10_2_o_number2"></div>
            <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
          </div>
          <div class="top10_2 border_bottom hidden" id="pc250421a" name="129901a">
            <div class="top10_2_number3"></div>
            <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）" src="${basepath}/Uploads/20120517/2012051711171988283.jpg"></a></div>
            <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
            <div class="top10_2_price"><strong><span>￥</span>189</strong></div>
          </div>
          <div class="top10_2_other border_bottom show" onmouseover="showcommend(129901,250421);" id="pc250421b" name="129901b">
            <div class="top10_2_o_number3"></div>
            <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
          </div>
          <div class="top10_2 border_bottom hidden" id="pc250421a" name="129901a">
            <div class="top10_2_number4"></div>
            <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）" src="${basepath}/Uploads/20120517/2012051711171988283.jpg"></a></div>
            <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
            <div class="top10_2_price"><strong><span>￥</span>189</strong></div>
          </div>
          <div class="top10_2_other border_bottom show" onmouseover="showcommend(129901,250421);" id="pc250421b" name="129901b">
            <div class="top10_2_o_number4"></div>
            <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
          </div>
          <div class="top10_2 border_bottom hidden" id="pc250421a" name="129901a">
            <div class="top10_2_number5"></div>
            <div class="top10_2_icon"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"><img  border="0" alt="艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）" src="${basepath}/Uploads/20120517/2012051711171988283.jpg"></a></div>
            <div class="top10_2_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
            <div class="top10_2_price"><strong><span>￥</span>189</strong></div>
          </div>
          <div class="top10_2_other border_bottom show" onmouseover="showcommend(129901,250421);" id="pc250421b" name="129901b">
            <div class="top10_2_o_number5"></div>
            <div class="top10_2_o_name"><a href="${basepath}/html/default/shop/2012051700368.html" target="_blank"> 艾勒蒂沃（ELETTIVO）B8868-2（卡其配黑）</a></div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
$(function(data){
		/*首页互动sliderjs*/
		$("#slider").easySlider({
			auto: true, 
			continuous: true,
			numeric: true,
			//controlsText:'Dell笔记本促销,SonyPSP新品发售,苹果iPad3发布',
		});
});

</script>
<#include "/WEB-INF/theme/default/shop/footer.ftl">
<script type="text/javascript" src="${basepath}/ui/default/js/jshop.js"></script>
</body>
</html>
