# using find_or_create_by will make this command idempotent which is useful
# for the seeds as you will want to run them every time you want to add new
# data

skills = [
  { name: 'MSSQL', skill_rank: 2 },
  { name: 'SSAS', skill_rank: 2 },
  { name: 'SSIS', skill_rank: 2 },
  { name: 'SSRS', skill_rank: 2 },

  { name: 'HTML', skill_rank: 5 },
  { name: 'Linux', skill_rank: 5 },
  { name: 'CSS', skill_rank: 5 },
  { name: 'Ruby on rails', skill_rank: 3 },
  { name: 'Arduino', skill_rank: 3 },
  { name: 'Python', skill_rank: 3 },
  { name: 'C', skill_rank: 3 },
  { name: 'C++', skill_rank: 3 },
  { name: 'Git', skill_rank: 3 },
  { name: 'Heroku', skill_rank: 3 },
  { name: 'Bash scripts', skill_rank: 3 },
  { name: 'MySQL', skill_rank: 4 },
  { name: 'Postgresql', skill_rank: 3 },
  { name: 'Reports builder 3.0', skill_rank: 4 },
  { name: 'VB', skill_rank: 2 },
  { name: 'JavaScript', skill_rank: 3 },
  { name: 'Java', skill_rank: 3 },
  { name: 'Google cloud', skill_rank: 4 },
  { name: 'VPS deployments', skill_rank: 4 },
  { name: 'Meteor', skill_rank: 1 }
]

skills.each do |a|
  Skill.find_or_create_by(a)
end

disiciplines = [
  { name: 'Management' },
  { name: 'Managed Services' },
  { name: 'Account Management' },
  { name: 'Company Processes' }
]

disiciplines.each do |a|
  Discipline.find_or_create_by(a)
end

interests = [
  { name: 'Gaming' },
  { name: 'Coding' },
  { name: '4wding' },
  { name: 'Camping' },
  { name: 'Fitness' }
]

interests.each do |a|
  Interest.find_or_create_by(a)
end

educations = [
  { name: 'CRM Config' },
  { name: 'SSAS' },
  { name: 'ITIL' },
  { name: 'CERT IV' },
  { name: 'Java' },
  { name: 'Frontline Management' },
  { name: 'Personal Training' },
]

educations.each do |a|
  Education.find_or_create_by(a)
end

industries = [
  { name: 'MSP' },
  { name: 'Health and Fitness' },
  { name: 'Information Technology' },
  { name: 'Retail' }
]

industries.each do |a|
  Industry.find_or_create_by(a)
end

articles =
  [
    { title: 'Home Made Arcade Machine (M.A.M.E)',
      thumbnail_url: 'assets/blog/arcade1.jpg',
      text: '
    <p>This little article describes the steps I took to create my (still
    working) arcade machine. If you have any questions I will be on one of the
    following (or all of the following): IRC, Ventrilo, BF3 server.</p>
    <p><strong>Resources</strong></p>
      <ul>
        <li><a href="http://mamedev.org/" >http://mamedev.org/</a></li>
        <li><a href="http://www.mygamesroom.com.au/index.php?page=shop.
        browse&amp;category_id=2&amp;option=com_virtuemart&amp;Itemid=13">http:
        //www.mygamesroom.com.au/</a></li>
      </ul>
    <p style="padding-left: 30px"><strong>Linux</strong></p>
      <ul>
        <li><a href="http://pingus.seul.org/%7Egrumbel/xboxdrv/xboxdrv.html">
        http://pingus.seul.org/~grumbel/xboxdrv/xboxdrv.html</a> – xbox
         controller driver for Linux. Stops the flashing power button.</li>
        <li><a href="http://www.anti-particle.com/wahcade.shtml">Wahcade</a> –
         This is the front end.</li>
        <li><a href="http://sdlmame.wallyweek.org/repository/">MAME for linux
        </a> – A custom up to date mame release. Better than mame cause its
         compiled</li>
      </ul>
    <p style="padding-left: 30px"><strong>Windows</strong></p>
      <ul>
        <li><a href="http://www.gameex.com/">GameEX</a> – Fantastic front end,
         I would say the best</li>
      </ul>
    <p style="padding-left: 30px"><strong>PC Hardware</strong></p>
      <ul>
        <li><a href="http://www.ozstick.com.au/prod_interface.html">I-PAC</a>–
         This device is for wiring up the arcade machine buttons straight into
          the USB/PS2 port. The computer then picks the button press up as a
           regular keyboard key press</li>
        <li><a href="http://www.ozstick.com.au/prod_btns.html">Buttons</a></li>
      </ul>
    <p><strong>Steps</strong></p>
      <ol>
        <li>Get a design for a cabinet, think about custom made mods. (I’ve
         seen some with fish tanks in them)</li>
        <li>Get PC hardware and software for your Arcade machine.</li>
        <li>Get parts that are required for controls, lights and anything
         custom on your arcade machine.</li>
        <li>Head to hardware store and purchase required wood.</li>
        <li>Cut wood.</li>
        <li>Screw wood together (Build cabinet).</li>
        <li>Paint the cabinet.</li>
        <li>Peace everything together</li>
        <li>Enjoy</li>
      </ol>
    <h2>Step 1: Designing the cabinet</h2>
    <p>The cabinet design is all up to you. There are many many different
     designs floating around the net. If you like the design I have your welcome
      to hit me on <a href="blank">IRC</a>.<br>
    The two main types are Upright cabinets and table top cabinet (cocktail
     cabinet). There is also the option to custom build your own design. You
      know something to fit into the kitchen bench maybe? or into the coffee
       table that also acts as a
        <a href="http://en.wikipedia.org/wiki/Home_theater_PC">HTPC</a>.<br>
    I am currently designing something else that is smaller and build for more
    a studio appartment. There is also the table top arcade machines to consider
    .<br>
    This part is up to you but, your welcome to ask more questions if you like.
    Onto the PC.</p>
    <h2>Step 2: PC and Arcade Hardware and Software</h2>
    <p>Currently I am using a P4… that’s right a P4, I don’t think it has 1gig
     of ram either. I have a CRT 21” monitor hooked up to it and it works
      perfectly.<br>
    You can pick up a PC rather cheap now days, anything low end will do,
       however, remmeber if you are going linux then some hardware may not be
        compatible.</p>
    <p>If your not after the authentic CRT feel and you are going with an LCD
     or LED monitor, then your going to save a lot of space AND you can get one
      of these
    I do recommend a full PC running Windows as the RapberryPi is Linux only
       and requires alot of work to get up and running.<br>
    Required:</p>
      <ul>
        <li>Computer</li>
        <li><a href="http://www.ozstick.com.au/prod_btns.html">Buttons</a></li>
        <li><a href="http://www.ozstick.com.au/prod_joy.html">Joysticks</a></li>
      </ul>
    <p><strong>Cosmetics:</strong></p>
      <ul>
        <li>Light (local hardware) for behind Bessel</li>
        <li><a href="http://www.ozstick.com.au/prod_coinmechs.html">Coin box
         </a>- For authenticity</li>
        <li>Light up buttons to make it look awesome, many many more custom
         modifications. I’m sure you have an idea of what you want.</li>
      </ul>
    <p>Once you have what you need, you should start by putting together the PC
     and getting the sofware sorted.</p>
    <p><strong>Software</strong></p>
    <p>I highly recomend the following:</p>
      <ul>
        <li>Windows</li>
        <li><a href="http://www.gameex.com/">GameEx</a> (Emulators come from
         this install)</li>
      </ul>
    <p>Install windows, install free games and free roms, install GameEx.</p>
    <h2>Step 3: Get parts that are required for controls</h2>
    <p>As stated above you will need the following:</p>
      <ul>
      <li><a href="http://www.ozstick.com.au/prod_interface.html">I-PAC</a></li>
        <li><a href="http://www.ozstick.com.au/prod_btns.html">Buttons</a></li>
      </ul>
    <p>This section is up to you as to how many players you would like to how
        many players you want on the arcade machine.
    I have only ever done two player and with a mouse and keyboard tray
    underneath you don’t need a
    <a href="http://www.ozstick.com.au/prod_track.html">trackball</a>
    (unless you want to play trackball games).</p>
    <p>The I-PAC is how you wire the controls up. All buttons are wired into
     the I-PAC and the I-PAC is then plugged into the computer through either
      the PS2 or USB port.</p>
    <h2>Step 4: Purchase required wood</h2>
    <p>I would say you do not need very thick wood. I have use 160mm MDF. This
       stuff is thick and heavy, very heavy! If you want something cheap then
        its normally thick and
      heavy. If you want something light and something that looks nice then
       your looking at more money. You local harware store will have what your
        after, this is determined
      by the design that you have decided on.</p>
    <p>I was unable to get glass for the screen. Your local glass maker will be
     able to make custom glass fits for your cabinet but I couldn’t spend that
      muc money on it.</p>
    <p>Cut the wood with propper tools, don’t use whats laying around as it
     wont fit correctly. I used a jigzaw in places I shouldn’t have, like along
      long edges.
    It was messy and looged messy (but you may want this?).</p>
    <p>Screw it all together. Paint it to a colour that will be aloud in the
     house.</p>
    <p>Place the PC, monitor, keyboard, mouse, sound system and control box
     (wired up) in the cabinet and enjoy.</p>
    <h2>Cosmetics</h2>
    <p>You want your arcade machine to look good. I have the following on mine:
    </p>
      <ul>
        <li>Glass</li>
        <li>Internal lighting for the bezel</li>
      </ul>
    <p><strong>And the next steps are:</strong></p>
      <ol>
        <li>Cut wood.</li>
        <li>Screw wood together (Build cabinet). &lt;- the build instructions
         can explain more this is extensive.</li>
        <li>Paint the cabinet.</li>
        <li>Peace everything together</li>
        <li>Enjoy</li>
      </ol>
    <p>These are kind of self explanatory. But, if you require more information
     then hit me up on IRC, Vent, BF3 server :D.</p>' },
    { title: 'Quadcopter',
      thumbnail_url: 'assets/blog/quadcopter1.jpg',
      text: '
      <p>This is my journey into the quadcopter hobby that has taken over my
       life.</p>
      <p>Before diving into this hobby, make sure you are aware of the
       Australian laws around fly UAV’s. This is for information purposes only.
      Always fly safe, please be responsible :D .</p>
      <p>A Quadcopter is a&nbsp;<em>unmanned aerial vehicle</em> (<em>UAV</em>)
       (but must be controlled always by someone, can’t be autonomous).
      There are several main parts to building one:</p>
        <ul>
          <li>Transmitter: This is the controller. You move the sticks to move
           the quadcopter.</li>
          <li>Receiver: Receives the input that you put into the controller.
          </li>
          <li>Flight controller: Monitors and measures through gyros,
           accelerometers and the inputs from the pilot (from receiver). The
            flight controller tells the electronic speed controllers how fast
             to push the motors so the quad stays level and does what you tell
              it.</li>
          <li>Electronic speed controllers (ESC): Receives the information from
           the flight controller and sends the right amount of power to the
            motors.</li>
          <li>Motor: The motors spin the propellers</li>
          <li>Propellers: Propellers cut through the air and provide thrust</li>
          <li>Battery: to power it all</li>
          <li>Frame: A frame holds everything together. Different types of
           frames are designed for different operations.</li>
        </ul>
      <p>That’s the very basics to building quadcopters or and sort of UAV. All
       of these items can be sourced from
      <a title="www.hobbyking.com" href="www.hobbyking.com"
       target="_blank">www.hobbyking.com</a> (including the flight controller).
      Strap a GoPro on and record your adventures.</p>
      <p>From this build you can then start adding modules to make it a little
       more interesting. A GPS can be added so you can plot points on a map and
      automate some flying (remember you always need to be in control). At the
      moment I have FPV (First Person View) that allows me to fly with a
      headset and receive video feedback, effectively giving first person view
      of what my quad can see. You feel like your actually sitting on the quad
       while its flying.</p>
      <p>Some great sources of information:</p>
        <ul>
          <li><a href="http://diydrones.com/" >http://diydrones.com</a></li>
          <li><a href="http://www.rcgroups.com/forums/index.php">
          http://rcgroups.com</a></li>
        </ul>
      <p>What drones can be used for:</p>
        <ul>
          <li><a href="http://www.abc.net.au/news/2013-08-30/drone-used-to-
          record-intensive-farm-production/4921814">http://www.abc.net.au/news
          /2013-08-30/drone-used-to-record-intensive-farm-production/4921814</a>
          </li>
          <li><a href="http://makezine.com/2013/06/15/farm-drones-take-flight/">
          http://makezine.com/2013/06/15/farm-drones-take-flight/</a></li>
        </ul>
    <p>My building collection (the last image is my smallest 33cm wide):</p>' },
    { title: 'RSS Feed Notification',
      thumbnail_url: 'assets/blog/ledraspi2.png',
      text: 'TODO' },
    { title: 'Spoton Webapp',
      thumbnail_url: '',
      text: '<p>
            Very simple customer relation management for a property maintenance
            company. To bridge the gap between Real Estate agents, Property
            Maintenance and the Customer. Currently able to book jobs and log
            time in the field. Eventually this will be data analytics, quoting
            and invoicing directly.</p>' }
  ]

articles.each do |a|
  Article.find_or_create_by(a)
end
