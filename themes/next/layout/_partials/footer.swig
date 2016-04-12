<div class="copyright" >
  {% set current = date(Date.now(), "YYYY") %}
  &copy; {% if theme.since and theme.since != current %} {{ theme.since }} - {% endif %}
  <span itemprop="copyrightYear">{{ current }}</span>
 
  <span class="author" itemprop="copyrightHolder">{{ config.author }} </span>
</div>


<div class="theme-info">
  It belongs to me, unless i tell you i reprinted it elsewhere.
</div>
