---
published: true
layout: homepage
weight: 0
title: Design With FontForge
---

<!--
<div style="background: white; width: 100%; text-align:center; padding:1em">
<img src="images/2013-02-18_love.png" width="400px" alt="Praise on Twitter">
</div>
-->

<ol class="rectangle-list">
{% for weight in (1..100) %}
  {% for p in site.pages %}
    {% if p.weight > 0 %}
    {% if p.weight == weight %}
      <li>
        <a {% if p.url == page.url %}class="active"{% endif %} href="{{ p.url }}">
          {{ p.title }}
        </a>
      </li>
    {% endif %}
    {% endif %}
  {% endfor %}
{% endfor %}
</ol>
