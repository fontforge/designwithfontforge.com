---
layout: homepage
title: Design With FontForge
---

A book about how to design new typefaces with FontForge. This page is just a stub, none of the links work, but in the future you'll be able to download the PDF on the right and so on.

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