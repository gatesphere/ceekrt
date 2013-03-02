<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo (http://webpages.charter.net/edreamleo/front.html) -->
<?xml-stylesheet ekr_test?>
<leo_file xmlns:leo="http://www.leo-editor.org/2011/leo" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="peckj.20130228101737.1702" a="E"><vh>TO DO</vh>
<v t="peckj.20130228101737.1703"><vh>Static pages</vh>
<v t="peckj.20130228101737.1723" a="E"><vh>relevant code</vh>
<v t="peckj.20130228101737.1722"><vh>static pages</vh></v>
</v>
<v t="peckj.20130228101737.1704"><vh>about.html</vh></v>
<v t="peckj.20130228101737.1706"><vh>help.html</vh></v>
<v t="peckj.20130228101737.1705"><vh>privacy.html</vh></v>
</v>
<v t="peckj.20130228101737.1707"><vh>CSS styling</vh>
<v t="peckj.20130228101737.1724"><vh>relevant code</vh>
<v t="peckj.20130227152029.1397"><vh>@file instance/application.cfg</vh></v>
</v>
</v>
<v t="peckj.20130228101737.1708"><vh>Database work</vh></v>
<v t="peckj.20130228101737.1710"><vh>Index page logic + layout</vh></v>
<v t="peckj.20130228101737.1711"><vh>"secret" model</vh></v>
</v>
<v t="peckj.20130228101737.1712" a="E"><vh>Filesystem nonsense</vh>
<v t="peckj.20130227152029.1391"><vh>@file ceekrt.fcgi</vh></v>
<v t="peckj.20130227152029.1395"><vh>@file runserver.py</vh></v>
<v t="peckj.20130227152029.1390"><vh>@file README.md</vh></v>
<v t="peckj.20130228101737.1715"><vh>ceekrt</vh>
<v t="peckj.20130227152029.1392"><vh>@file ceekrt/__init__.py</vh></v>
<v t="peckj.20130301225328.1472" a="E"><vh>@file ceekrt/database.py</vh></v>
<v t="peckj.20130227152029.1396" a="E"><vh>@file ceekrt/views.py</vh></v>
<v t="peckj.20130301225328.1475" a="E"><vh>@file ceekrt/models.py</vh></v>
<v t="peckj.20130228101737.1714" a="E"><vh>templates</vh>
<v t="peckj.20130228101737.1692" a="E"><vh>partials</vh>
<v t="peckj.20130301225328.1478"><vh>@file ceekrt/templates/_form.html</vh></v>
<v t="peckj.20130301225328.1477"><vh>@file ceekrt/templates/_list.html</vh></v>
<v t="peckj.20130228101737.1651"><vh>@file ceekrt/templates/_style.html</vh></v>
<v t="peckj.20130228101737.1641"><vh>@file ceekrt/templates/_js.html</vh></v>
<v t="peckj.20130228101737.1635"><vh>@file ceekrt/templates/_header.html</vh></v>
<v t="peckj.20130228101737.1631"><vh>@file ceekrt/templates/_footer.html</vh></v>
</v>
<v t="peckj.20130228101737.1693" a="E"><vh>layouts</vh>
<v t="peckj.20130228101737.1617" a="E"><vh>@file ceekrt/templates/base.html</vh></v>
<v t="peckj.20130228101737.1685"><vh>@file ceekrt/templates/share.html</vh></v>
<v t="peckj.20130228101737.1655"><vh>@file ceekrt/templates/index.html</vh></v>
<v t="peckj.20130228101737.1653" a="O"><vh>@file ceekrt/templates/error.html</vh></v>
</v>
</v>
<v t="peckj.20130228101737.1717"><vh>static</vh>
<v t="peckj.20130228101737.1548"><vh>@file ceekrt/static/css/style.css</vh></v>
</v>
</v>
<v t="peckj.20130228101737.1716"><vh>instance</vh>
<v t="peckj.20130227152029.1397"></v>
</v>
</v>
<v t="peckj.20130228101737.1713" a="E"><vh>ceekrt logic</vh>
<v t="peckj.20130227152029.1392"></v>
<v t="peckj.20130227152029.1396" a="E"></v>
<v t="peckj.20130301225328.1472" a="E"></v>
<v t="peckj.20130301225328.1475" a="E"></v>
</v>
<v t="peckj.20130228101737.1718" a="E"><vh>ceekrt styling</vh>
<v t="peckj.20130228101737.1548"></v>
<v t="peckj.20130228101737.1714" a="E"></v>
</v>
<v t="peckj.20130228101737.1719" a="E"><vh>application config</vh>
<v t="peckj.20130227152029.1397"></v>
</v>
</vnodes>
<tnodes>
<t tx="peckj.20130228101737.1653">@language xml
@tabwidth -2

{% extends "base.html" %}

{% block title %}
&lt;title&gt;error {{ error }} | suspended-chord.info&lt;/title&gt;
{% endblock title %}

{% block content %}
  &lt;h1&gt;error {{ error }}&lt;/h1&gt;
  &lt;p&gt;Sorry.  Would you like to go back &lt;a href="{{ url_for('index') }}"&gt;home&lt;/a&gt;?&lt;/p&gt;
{% endblock content %}
</t>
<t tx="peckj.20130228101737.1692"></t>
<t tx="peckj.20130228101737.1693"></t>
<t tx="peckj.20130228101737.1702"></t>
<t tx="peckj.20130228101737.1703"></t>
<t tx="peckj.20130228101737.1704"></t>
<t tx="peckj.20130228101737.1705"></t>
<t tx="peckj.20130228101737.1706"></t>
<t tx="peckj.20130228101737.1707"></t>
<t tx="peckj.20130228101737.1708"></t>
<t tx="peckj.20130228101737.1710"></t>
<t tx="peckj.20130228101737.1711">needs a "visible" field
needs a "src_ip" field</t>
<t tx="peckj.20130228101737.1712"></t>
<t tx="peckj.20130228101737.1713"></t>
<t tx="peckj.20130228101737.1714"></t>
<t tx="peckj.20130228101737.1715"></t>
<t tx="peckj.20130228101737.1716"></t>
<t tx="peckj.20130228101737.1717"></t>
<t tx="peckj.20130228101737.1718"></t>
<t tx="peckj.20130228101737.1719"></t>
<t tx="peckj.20130228101737.1722"># static pages
@app.route('/about')
def about():
  return render_template('about.html')
  
@app.route('/help')
def help():
  return render_template('help.html')
  
@app.route('/privacy')
def privacy():
  return render_template('privacy.html')
</t>
<t tx="peckj.20130228101737.1723"></t>
<t tx="peckj.20130228101737.1724"></t>
</tnodes>
</leo_file>
