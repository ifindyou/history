<div class="site-meta {% if theme.custom_logo.enabled %}custom-logo{% endif %}">
  
  <div class="custom-logo-site-title" style="background-color:white;">
    <div style="display:inline-block;width:4em;height:4em;position: relative;
    top: 2em;background-size:cover;background-image:url({{ theme.avatar }})">
    </div>
    <a href="{{ config.root }}"  class="brand" rel="start" style="background:white;color:black;">
      <span class="logo-line-before"><i></i></span style="background:white;color:black;">
      <span class="site-title" style="background:white;color:black;">{{ config.title }}</span>
      <span class="logo-line-after" style="background:white;color:black;"><i></i></span>
    </a>
  </div>
  <p class="site-subtitle">{{ config.subtitle }}</p>
</div>

<div class="site-nav-toggle">
  <button>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
    <span class="btn-bar"></span>
  </button>
</div>

<nav class="site-nav">
  {% set hasSearch = theme.swiftype_key || theme.tinysou_Key || config.search %}

  {% if theme.menu %}
    <ul id="menu" class="menu">
      {% for name, path in theme.menu %}
        {% set itemName = name.toLowerCase() %}
        <li class="menu-item menu-item-{{ itemName }}">
          <a href="{{ url_for(path) }}" rel="section">
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-{{theme.menu_icons[itemName] || 'question-circle'}} fa-fw"></i> <br />
            {% endif %}
            {{ __('menu.' + itemName) }}
          </a>
        </li>
      {% endfor %}

      {% if hasSearch %}
        <li class="menu-item menu-item-search">
          {% if theme.swiftype_key %}
            <a href="#" class="st-search-show-outputs">
          {% elseif config.search %}
            <a href="#" class="popup-trigger">
          {% endif %}
            {% if theme.menu_icons.enable %}
              <i class="menu-item-icon fa fa-search fa-fw"></i> <br />
            {% endif %}
            {{ __('menu.search') }}
          </a>
        </li>
      {% endif %}
    </ul>
  {% endif %}

  {% if hasSearch %}
    <div class="site-search">
      {% include 'search.swig' %}
    </div>
  {% endif %}
</nav>

