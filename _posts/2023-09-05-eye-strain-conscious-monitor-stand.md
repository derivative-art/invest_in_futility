---
layout: post
title: "Eye strain conscious monitor stand"
tags: [not-refused,derivative]
author: "no one is brave enough to take the blame"
---
 

## [Source of inspiration](#source)

### Macchine Inutili
<img src="images/munari.png"
     alt="Bruno Munari (1953) Macchine Inutili : Source Wikipedia"
     width="30%"  width="30%"
     style="float: left; margin-right: 10px;" />


In the 1930s, the iconic and complex visual artist [Bruno Munari](https://en.wikipedia.org/wiki/Bruno_Munari) created the _Macchine Inutili_ \[Useless Machines\], an invention that's only purpose is to do something useless. Today, they might be perceived as a typical wind chime. 

&nbsp;
<br>
&nbsp;
&nbsp;
<br>
&nbsp;

### Useless Machines

In the 1950 this invention inspired [Marvin_Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky) who created what he called the  <u>"ultimate machine"</u>, [Useless Machines](https://en.wikipedia.org/wiki/Useless_machine). The Minskey inspired devices have been know by several names, as a youth I knew them as a <u>"leave me alone box"</u>. As seem in this video, the boxes only function is to turn it self off once turned on.
&nbsp;
<br>
&nbsp;

<center><iframe width="420" height="315"
src="https://www.youtube.com/embed/Z86V_ICUCD4?t=11">
</iframe> </center>



&nbsp;
<br>
&nbsp;
<br>
&nbsp;
<hr>


# Work in progress, beyond this point

<img src="images/wip.jpg"
     alt=""
     width="30%"  width="30%"  />

&nbsp;
<br>
&nbsp; 
<hr>






## Confrontational Machines

With the idea of a useless machine, what about a machine that, rather than havng no use, its prime activity is to defy its owner.

The <u>"Eye strain conscious monitor stand"</u> is what I would call a "[Resistential](https://en.wikipedia.org/wiki/Resistentialism)<u> Machine</u>"





## Project goal?  A performace:  Scenario
<hr>


<b>INT. HOME OFFICE </b>
<center> <b>THE SUBJECT</b></center> 
(The subject sits at the table gets comfortable, then pulls the monitor towords themself, and start typing)
<dd>  <i>  <span style="color:white"> ah. </span> </i> </dd> 

<center> <b>THE MONITOR STAND</b></center> 
(A short period after the monitor stand pulls sitself away.)

<center> <b>THE SUBJECT</b></center> 
(Stunded, the subject first pauses, then reaches over and pulls the monitor stand back to that comfortable place.)
<dd>  <i>   <span style="color:white">huh? ... ah.</span> </i> </dd> 

<center> <b>THE MONITOR STAND</b></center>
(Waiting for the subject to get comfortable, the stand pauses, then jerks back and pauses for a short period. The subjects freezes, then the monitor pulls back again)

<center> <b>THE SUBJECT</b></center> 
( the subject thinking, "again", reaches over and pulls the stand back)

<dd><i>   <span style="color:white">aah</span>    </i> </dd> 


<center> <b>THE MONITOR STAND</b></center>
( wait for the subject to get comfortable, then jerks back, waits, and jerks back again, taunting the subject, before pulling back )
 
&nbsp;
<br>
<hr> 
&nbsp;

## [Materials required](#sketch)

### List of parts

 

1.  [ ] A monitor stand
1.  [x] A power supply, a 5V@1A "wall-wart" should work
1.  [ ] A motor ( stepper or gear motor? )
1.  [ ] A driver chip (ULN2003A, TIP transistor or like)
1.  [ ] An ultrasonic range finder
1.  [x] A raspberry pi, Arduino or a basic AVR chip
1.  [ ] and some code

### Example of code


 
<script src="https://cdnjs.cloudflare.com/ajax/libs/mermaid/8.0.0/mermaid.min.js"></script>
 
<div class="mermaid">graph TD
wait_200--&gt;measure_distance
measure_distance--&gt;|too close|is_vibrating
is_vibrating--&gt;|no|move_back
move_back--&gt;measure_distance
is_vibrating--&gt;|yes|wait_200
measure_distance--&gt;|ok|wait_200
</div>
	
 <script>
var config = {
    startOnLoad:true,
    theme: 'forest',
    flowchart:{
            useMaxWidth:false,
            htmlLabels:true
        }
};
mermaid.initialize(config);
window.mermaid.init(undefined, document.querySelectorAll('.language-mermaid'));
</script> 

&nbsp;
<br>
&nbsp;
Some test will be needed to confirm the speed of the motor. If its a stepper there might be more work.




### Example monitor stand

<a href="https://www.amazon.com/TEAMIX-Monitor-Computer-Keyboard-Organizer/dp/B0BYCHSSH8/ref=sr_1_6?keywords=monitor%2Bitem%2Bstand&qid=1693943900&sr=8-6&th=1" >
<img src="images/monitor_stand.png"  width="30%"  width="30%">
</a>
 

&nbsp;
<br>
&nbsp;

 
##  [Initial Sketchy Ideas](#sketch2)
 
## [The end](#the-end)
### [Will it fail?](#ultimate-fail)


 

