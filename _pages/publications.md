---
layout: page
permalink: /publications/
title: publications
description:
nav: true
nav_order: 1
---
<!-- _pages/publications.md -->

List of peer-reviewed publications in reverse chronical order.
<div class="publications">
  <ol class="bibliography">
   <li>
     <div class="abbr">
       Types
       <br>
       <abbr class="badge badge-conf">Int'l Conference</abbr>
       &nbsp;
<!--       <abbr class="badge badge-conf" style="background-color:#b30000">Top Conference</abbr> -->
<!--       &nbsp; -->
       <abbr class="badge badge-jrnl">Int'l Journal</abbr>
     </div>
   </li>
  </ol>
{% bibliography -f {{ site.scholar.bibliography }} %}
</div>
