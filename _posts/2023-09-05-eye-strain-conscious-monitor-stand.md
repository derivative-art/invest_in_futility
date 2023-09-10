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

In the 1950 this invention inspired [Marvin_Minsky](https://en.wikipedia.org/wiki/Marvin_Minsky) who created what he called the  <u>"ultimate machine"</u>. The Minskey inspired devices have been know by several names. As a youth I knew them as a <u>"leave me alone box"</u> (today we know them as [Useless Machines](https://en.wikipedia.org/wiki/Useless_machine)). As seen in this video, the boxes only function is to turn it self off, once turned on.
&nbsp;
<br>
&nbsp;

<center><iframe width="420" height="315"
src="https://www.youtube.com/embed/Z86V_ICUCD4?t=11">
</iframe> </center>


&nbsp;
<br>
&nbsp;
 
> Nota Bene, there is an artist missing from the list, I forget who it is... An art installation, with a CRT, a video camera and a power outlet.  The camera is pointing to the power outlet, surveilling to see that it is not unplugged.


&nbsp;
<br>
&nbsp;
<hr> 



## Confrontational Machines

With the idea of a useless machine, what about a machine that, rather than having no use, its prime activity is to defy its owner. Introducing the <u>"Eye strain conscious monitor stand"</u>!

This fits in nicely with my feeling about [Resistential](https://en.wikipedia.org/wiki/Resistentialism)  Machines





## Project goal?  A performance:
This performance piece uses a found object, a monitor stand, and converts it in to a robot that antagonizes its owner.

###  Scenario
<hr>


<b>INT. HOME OFFICE </b>
<center> <b>THE SUBJECT</b></center>
(The subject sits at the table gets comfortable, then pulls the monitor towards themself, and starts typing)
<dd>  <i>  <span style="color:white"> ah. </span> </i> </dd>

<center> <b>THE MONITOR STAND</b></center>
(A short period after the monitor stand pulls itself away.)

<center> <b>THE SUBJECT</b></center>
(Stunned, the subject first pauses, then reaches over and pulls the monitor stand back to that comfortable place.)
<dd>  <i>   <span style="color:white">huh? ... ah.</span> </i> </dd>

<center> <b>THE MONITOR STAND</b></center>
(Waiting for the subject to get comfortable, the stand pauses, then jerks back and pauses for a short period. The subjects freezes, now confused, then the monitor pulls back again)

<center> <b>THE SUBJECT</b></center>
( the subject thinking, "again", reaches over and pulls the stand back)

<dd><i>   <span style="color:white">aah</span>    </i> </dd>


<center> <b>THE MONITOR STAND</b></center>
( wait for the subject to get comfortable, then jerks back, waits, and jerks back again, taunting the subject, before pulling back )
 
&nbsp;
<br>
<hr>
&nbsp;




## Materials required

### List of parts


| Needed part | What to do about it|
|---|---|
| ____ | _____________________________________________________________________________________________|
| A monitor stand   | got two of these  - click to see  <details> <a href="https://www.amazon.com/TEAMIX-Monitor-Computer-Keyboard-Organizer/dp/B0BYCHSSH8/ref=sr_1_6?keywords=monitor%2Bitem%2Bstand&qid=1693943900&sr=8-6&th=1" ><img src="images/monitor_stand.png"  width="30%"  width="30%"></a></details>|
|An ultrasonic range finder  | got a HC-SR04 - click to see <details> <a href="images/ping.jpeg" >    <img src="images/ping.jpeg"  width="30%"  width="30%">    </a>    </details>|
|RaspberryPi, or embedded? | Chose the ESP12E, [Datasheet](images/ESP12E-Datasheet.pdf) - click to see <details><a href="images/esp32-12e.png" ><img src="images/esp32-12e.png"  width="30%"  width="30%"></a></details> |
| Write some code?  | The [git repo](https://github.com/derivative-art/MonitorStand-escms) for this project |
| Accelerometer sensor | ADXL3xx accelerometer failed :( |
|A power supply, a 5V@1A "wall-wart" should work |    looking at junk  |
|A motor ( stepper or gear motor? )                |  donations or borrowing |
|A driver chip (ULN2003A, TIP transistor or like)  |  donations or borrowing |
| Motion sensor |  ??? |






### Example of code

> The [git repo](https://github.com/derivative-art/MonitorStand-escms) in a work in progess, but this is what I am hoping to complete
 
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

<hr>


# Appendix
## Build Events Timeline
### September 01
1.  [x] Created a list of parts (see below)

### September 06

1.  [x] Got initial code working
    1.  [x] have web UI for debugging

### September 09


1.  [x] Acquired a monitor stand
1.  [x] Acquired an HC-SR04 "ping" sensor.
    1.  [x] ESP32-12e does not have 5v - click to see the hack <details>  
            <a href="images/esp32-hc-and-arduino.jpg" >
            <img src="images/esp32-hc-and-arduino.jpg"  width="30%"  width="30%">
            </a> </details>
        1.  [x] This means we will need to hack the PSU to get 5V for the final project. 
1.  [x] Created created the `measure_distance` function
1.  [x] Created the `too close` conditional
1.  [x] Created `is_vibrating` conditional ( then removed it )
    1.  [x] Tested code an  ADXL3xx, X-Y-Z accelerometer... I think the part is broken :/





