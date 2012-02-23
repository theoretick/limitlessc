---
layout: post
title: Why Pianos are the Way They Are, or What's the deal with Music Theory?
date: 2011-12-15
category: notes
tags:
 - musictheory
 - music
 - piano
 - breakdown
description: why pianos are the way they are, music theory breakdown
---

<div>
<div>Been curious about this for a while and after a few somewhat heated discussions (mainly my heat) with musicians about why the hell scales are the way they are, why pianos are all weird (why no B#, or why that's C), and is the idea of musical&nbsp;dissonance&nbsp;bullshit tradition or legit, I finally found some information. &nbsp;The annoying part to me is how long it has taken me to find this out since apparently people who play music just "get it" or blindly accept it and those who don't don't play music.</div>
<br />
<div>I found a post on StackExchange asking exactly what I'm looking for: "<a class="offsite-link-inline" href="http://math.stackexchange.com/questions/11669/mathematical-difference-between-white-and-black-notes-in-a-piano" target="_blank">Mathematical differences between white and black keys on a piano</a>." &nbsp;From there I gathered most of my data and with some other sources, a pretty solid picture of what's going on.</div>
<br />
<h2>The question:</h2>
<div>
<blockquote>
<p>The division of the&nbsp;<a rel="nofollow" href="http://en.wikipedia.org/wiki/Chromatic_scale" target="_blank">chromatic scale</a>&nbsp;in 7 natural notes (white keys in a piano) and 5&nbsp;<a rel="nofollow" href="http://en.wikipedia.org/wiki/Accidental_%28music%29" target="_blank">accidental</a>&nbsp;ones (black) seems a bit arbitrary to me.</p>
<p>Mathematically, is there any difference between white and black notes, or do we make the distinction just for historical reasons?</p>
<p>Apparently, adjacent notes in a piano (including white or black) are always separated by a semitone. Why the distinction, then? Why not just have scales with 12 notes? (apparently there's a musical scale called&nbsp;<a rel="nofollow" href="http://en.wikipedia.org/wiki/Swara" target="_blank">Swara</a>&nbsp;that does just that)</p>
<p>I've asked several musician friends, but they lack the math preparation for giving me a valid answer. "Notes are like that because they are like that".</p>
<p>I need some mathematician with musical knowledge (or a musician with mathematical knowledge) to help me out with this.</p>
</blockquote>
<h3>excerpt from a <a class="offsite-link-inline" href="http://www.reddit.com/r/musictheory/comments/eb49c/mathematical_difference_between_white_and_black/c1cp7cn" target="_blank">Reddit post</a> short answer:</h3>
</div>
<div></div>
<div>
<blockquote>
<div><em><strong>"You basically started the scale from any random frequency you wanted (because the intervals are all that's really important in just intonation), and you could had different "modes" depending on what note from the scale was the primary tone in the piece. The two most famous modes are the minor and major scales."</strong></em></div>
</blockquote>
</div>
<h3>and some excerpts from the longer answers:</h3>
<blockquote>
<div>
<p>So, in theory, you can start from an arbitrary frequency (or note) and build a scale of "harmonic" notes using these ratios (I'm using quotes because the term harmonic has a very specific meaning in music, and I'm talking in broad and imprecise terms). The major and minor scales of Western music can be approximately derived from this scheme. Both scales (major and minor) have 7 notes. The white keys in the piano correspond to the major scale, starting from the C note.</p>
<p>Now, if you get the C note and use the "perfect" fractions, you'll get the "true" C major scale. And that's where the fun begins.</p>
<p>If you take any note in the C major scale, you can treat that note as the start of another scale. Take for instance the fifth of C (it's the G), and build a new major scale, now starting from G instead of C. You'll get another seven notes. Some of them are also on the scale of C; others are very close, but not exactly equal; and some fall in the middle of the notes in the scale of C.</p>
<p>If you repeat this exercise with all notes, you'll end up building 12 different scales. The problem is that the interval is not regular, and there are some imprecisions. You need to retune the instrument if you want to have the perfect scale.</p>
<p>The concept of "chromatic" scale (with 12 notes, equaly spaced) was invented to solve this "problem". The chromatic scale is a mathematical approximation, that is close enough for MOST people (but not all). People with "perfect" ear can listen the imperfections.</p>
</div>
</blockquote>
<div>Another:</div>
<blockquote>
<div><strong>Twelve half-steps makes up an octave. Why twelve?</strong></div>
<div>
<p>At the end of the day, what we want out of our musical frequencies are nice ratios of small integers. For example, a perfect fifth is supposed to correspond to a frequency ratio of&nbsp;3</p>
</div>
<div>
<p>:2, or&nbsp;1.5:1, but in equal temperament it doesn't; instead, it corresponds to a ratio of&nbsp;2712:1&asymp;1.498:1. As you can see, this is not a fifth; however, it is quite close.</p>
<p>Similarly, a perfect fourth is supposed to correspond to a frequency ratio of&nbsp;4:3, or&nbsp;1.333...:1, but in equal temperament it corresponds to a ratio of&nbsp;2512:1&asymp;1.335:1. Again, this is not a perfect fourth, but is quite close.</p>
<p>And so on. What's going on here is a massively convenient mathematical coincidence: several of the powers of&nbsp;2&radic;12&nbsp;happen to be good approximations to ratios of small integers, and there are enough of these to play Western music.</p>
</div>
<div></div>
<div></div>
<div></div>
<div></div>
</blockquote>
<div>An important comment that I also found was this:</div>
<blockquote>
<div>&nbsp;"Just to add one sentence that is implicit in Qiaochu's answer [the above long answer]: in equal temperament one may as well just have 12 identical keys. But in pythagorean tuning and well-temperament, there's quite a difference between the different keys; hence it is less odd to have the keys not be completely symmetrical. The white keys correspond to the "preferred" diatonic scale of C-major. If you train your ears a bit, you maybe able to hear the difference of, say, Bach's Well-tempered Klavier played on modernly tuned instrument versus a well-tempered one. "</div>
<p>Here's how this coincidence works. You get the white keys from&nbsp;C&nbsp;using (part of) the circle of fifths. Start with&nbsp;C&nbsp;and go up a fifth to get&nbsp;G, then&nbsp;D, then&nbsp;A, then&nbsp;E, then&nbsp;B. Then go down a fifth to get&nbsp;F. These are the "neighbors" of&nbsp;C&nbsp;in the circle of fifths. You get the black keys from here using the rest of the circle of fifths. After you've gone up a "perfect" perfect fifth twelve times, you get a frequency ratio of&nbsp;312:212&asymp;129.7:1. This happens to be rather close to&nbsp;27:1, or seven octaves!&nbsp;</p>
</blockquote>
<p>And an additional link on the keyboard <a class="offsite-link-inline" href="http://en.wikipedia.org/wiki/Musical_keyboard#Size_and_historical_variation" target="_blank">Wikipedia on Size and Historical Variations</a></p>
<h2>&nbsp;And finally, a note on dissonance:</h2>
<blockquote>
<p><span>The Greeks had a lot of interest in mathemathics, and it seemed "right" for them to search for "perfect" combinations&mdash;perfect meaning that they should be expressed in terms of fractions of small integer numbers. They noticed that if you double or halve the string length, you get the same note (the concept of an octave); other fractions, such as 2/3, 3/4, also produced "harmonic" combinations. That's also the reason why some combinations sound better, as it can be explained by physics. When you combine several sine waves, you hear several different notes that are the result of the interference betwen the original waves. Some combinations sound better while others produce what we call "disonance".</span></p>
</blockquote>
<p>The StackExchange page is gloriously long with a variety of different explanations for the same thing. I encourage others to read through and try and check out as many as possible. &nbsp;For me, each different explanation just provided me with a clearer understanding of what's going on. &nbsp;Now I'm starting to get it.</p>
<p><span style="text-decoration: underline;">EDIT: </span><span style="text-decoration: underline;">Everyone who has gotten this far should make sure to read Sarah's beautifully thorough comment below going into each issue in the clearest way yet.</span></p>
</div>
-----
COMMENT:
AUTHOR: Sarah
EMAIL: sarah.stricks@gmail.com
IP: 67.171.159.253
URL: 
date: 12/15/2011 07:19:22 PM
<p>I&#39;ll start by flat out agreeing that the division of the chromatic scale and the distribution of piano keys is absolutely arbitrary. In my music studies, I got the overwhelming impression that there is a a belief that the division into twelfths is a magically, naturally existing phenomenon, which is ill-informed but not surprising to me. Equal temperament wasn&#39;t even &quot;discovered&quot; until sometime early in the 1700s and its main purpose seems to be for mechanistic tone production consistency, specifically for keyed instruments. Also, this distribution and consequent tuning tends to be blindly accepted as <i>correct</i> and <i>modern</i> by contemporary musicians because the 12-note division represents how it has always been. Red flag.</p><p><a href="http://hyperphysics.phy-astr.gsu.edu/hbase/music/et.html" rel="nofollow">Equal temperament (ET)</a> tuning is essentially an estimate that generally falls on pleasant-enough interval definitions but is imperfect; it requires the musician to play based on static sound frequencies rather than pure sound intervals. Just temperament, in contrast, requires that each scale being used has its own tuning. Essentially, this is playing by ear but it requires that the musician(s) have instruments that allow real-time adjustment. (There is also a Pythagorean temperament that I know very little about.) </p><p>Ideally, the third, fourth and fifth would all have very clean interval ratios (such as 5:4 for a major third, 3:2 for a fifth). However, on the ET circle of fifths the purity of the intervals is sacrificed in order to create the circle itself. Starting from C, the twelve steps around the circle of fifths would be C - G - D - A - E - B - F# - C# - A♭/G# - E♭ - B♭ - F - C. These begin to be off by several <a href="http://en.wikipedia.org/wiki/Cent_(music)" rel="nofollow">cents</a> (100 cents is a twelfth of an octave) about halfway through and by the end the final C is about a quarter semitone too high--this discrepancy, actually quite displeasing to the ear, is called a <a href="http://en.wikipedia.org/wiki/Comma_(music)" rel="nofollow">comma</a>.</p><p>Dealing with your question about why don&#39;t we just have a scale with twelve notes, twelve notes aren&#39;t even ideal. It seems better (at least in my opinion) to base all tuning off the tonic of the scale that defines the key signature because this allows the ideal ratios to be achieved for all degrees of the scale. There are plenty of musical traditions where this is the case, anyway. I can see how this would create issues when large ensembles were playing together, though, which is a central argument for ET. Because this standardized division of the soundscape into twelve chromatic steps allows the third, fourth and fifth to occur with less than ~5¢ discrepancy range; since the majority of Western music relies on these intervals to build stable chords, it is suitable.</p><p>Today the standard pitch on which everything is built is and A at 440 Hz. There is evidence, though, that the standard pitches across Europe varied by as much as 75 Hz meaning that a town in Germany might tune from a note at 392 Hz producing music strikingly different from a French town that based harmony on a note at 465 Hz. This results in inaccurate playing of period music. For example, Baroque music should be based on a lower frequency than today&#39;s standard. </p><p>As a last thought, it is interesting to consider that our understanding (from a Western European perspective) of music theory almost makes it impossible to notate and recreate musical traditions based on interval purity or &quot;non-standard&quot; chord clusters because the frequencies produced do not exist in the 12-piece chromatic distribution of sound that is created. This used to be more in line with musical notation: an A♭ and a G#, now the &quot;same note,&quot; actually would not have sounded the same before with the A♭ being slightly lowered and the G# slightly raised depending on key. The existence of two or more notations for the same sound now exist for theoretical chord-building reasons rather than to describe discrete sounds.</p><p>You might like to check out some of the <a href="http://www.phy.mtu.edu/~suits/Physicsofmusic.html" rel="nofollow">Michigan Tech physics of music page</a> as well as <a href="http://leware.net/temper/temper.htm" rel="nofollow">this page</a> dealing with temperaments in general. You could also probably get your hands on the book &quot;How Equal Temperament Ruined Harmony (and Why You Should Care)&quot; by Ross W. Duffin.</p>
-----

