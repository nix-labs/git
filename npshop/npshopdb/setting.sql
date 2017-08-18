USE npshopdb;

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=284 DEFAULT CHARSET=utf8;


insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (1,0,'shipping','shipping_sort_order','3',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (2,0,'sub_total','sub_total_sort_order','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (3,0,'sub_total','sub_total_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (4,0,'tax','tax_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (5,0,'total','total_sort_order','9',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (6,0,'total','total_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (7,0,'tax','tax_sort_order','5',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (8,0,'free_checkout','free_checkout_sort_order','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (9,0,'cod','cod_sort_order','5',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (10,0,'cod','cod_total','0.01',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (11,0,'cod','cod_order_status_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (12,0,'cod','cod_geo_zone_id','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (13,0,'cod','cod_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (14,0,'shipping','shipping_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (15,0,'shipping','shipping_estimator','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (27,0,'coupon','coupon_sort_order','4',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (28,0,'coupon','coupon_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (34,0,'flat','flat_sort_order','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (35,0,'flat','flat_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (36,0,'flat','flat_geo_zone_id','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (37,0,'flat','flat_tax_class_id','9',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (41,0,'flat','flat_cost','5.00',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (42,0,'credit','credit_sort_order','7',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (43,0,'credit','credit_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (53,0,'reward','reward_sort_order','2',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (54,0,'reward','reward_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (146,0,'category','category_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (158,0,'account','account_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (159,0,'affiliate','affiliate_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (267,0,'config','config_robots','abot
dbot
ebot
hbot
kbot
lbot
mbot
nbot
obot
pbot
rbot
sbot
tbot
vbot
ybot
zbot
bot.
bot/
_bot
.bot
/bot
-bot
:bot
(bot
crawl
slurp
spider
seek
accoona
acoon
adressendeutschland
ah-ha.com
ahoy
altavista
ananzi
anthill
appie
arachnophilia
arale
araneo
aranha
architext
aretha
arks
asterias
atlocal
atn
atomz
augurfind
backrub
bannana_bot
baypup
bdfetch
big brother
biglotron
bjaaland
blackwidow
blaiz
blog
blo.
bloodhound
boitho
booch
bradley
butterfly
calif
cassandra
ccubee
cfetch
charlotte
churl
cienciaficcion
cmc
collective
comagent
combine
computingsite
csci
curl
cusco
daumoa
deepindex
delorie
depspid
deweb
die blinde kuh
digger
ditto
dmoz
docomo
download express
dtaagent
dwcp
ebiness
ebingbong
e-collector
ejupiter
emacs-w3 search engine
esther
evliya celebi
ezresult
falcon
felix ide
ferret
fetchrover
fido
findlinks
fireball
fish search
fouineur
funnelweb
gazz
gcreep
genieknows
getterroboplus
geturl
glx
goforit
golem
grabber
grapnel
gralon
griffon
gromit
grub
gulliver
hamahakki
harvest
havindex
helix
heritrix
hku www octopus
homerweb
htdig
html index
html_analyzer
htmlgobble
hubater
hyper-decontextualizer
ia_archiver
ibm_planetwide
ichiro
iconsurf
iltrovatore
image.kapsi.net
imagelock
incywincy
indexer
infobee
informant
ingrid
inktomisearch.com
inspector web
intelliagent
internet shinchakubin
ip3000
iron33
israeli-search
ivia
jack
jakarta
javabee
jetbot
jumpstation
katipo
kdd-explorer
kilroy
knowledge
kototoi
kretrieve
labelgrabber
lachesis
larbin
legs
libwww
linkalarm
link validator
linkscan
lockon
lwp
lycos
magpie
mantraagent
mapoftheinternet
marvin/
mattie
mediafox
mediapartners
mercator
merzscope
microsoft url control
minirank
miva
mj12
mnogosearch
moget
monster
moose
motor
multitext
muncher
muscatferret
mwd.search
myweb
najdi
nameprotect
nationaldirectory
nazilla
ncsa beta
nec-meshexplorer
nederland.zoek
netcarta webmap engine
netmechanic
netresearchserver
netscoop
newscan-online
nhse
nokia6682/
nomad
noyona
nutch
nzexplorer
objectssearch
occam
omni
open text
openfind
openintelligencedata
orb search
osis-project
pack rat
pageboy
pagebull
page_verifier
panscient
parasite
partnersite
patric
pear.
pegasus
peregrinator
pgp key agent
phantom
phpdig
picosearch
piltdownman
pimptrain
pinpoint
pioneer
piranha
plumtreewebaccessor
pogodak
poirot
pompos
poppelsdorf
poppi
popular iconoclast
psycheclone
publisher
python
rambler
raven search
roach
road runner
roadhouse
robbie
robofox
robozilla
rules
salty
sbider
scooter
scoutjet
scrubby
search.
searchprocess
semanticdiscovery
senrigan
sg-scout
shai''hulud
shark
shopwiki
sidewinder
sift
silk
simmany
site searcher
site valet
sitetech-rover
skymob.com
sleek
smartwit
sna-
snappy
snooper
sohu
speedfind
sphere
sphider
spinner
spyder
steeler/
suke
suntek
supersnooper
surfnomore
sven
sygol
szukacz
tach black widow
tarantula
templeton
/teoma
t-h-u-n-d-e-r-s-t-o-n-e
theophrastus
titan
titin
tkwww
toutatis
t-rex
tutorgig
twiceler
twisted
ucsd
udmsearch
url check
updated
vagabondo
valkyrie
verticrawl
victoria
vision-search
volcano
voyager/
voyager-hc
w3c_validator
w3m2
w3mir
walker
wallpaper
wanderer
wauuu
wavefire
web core
web hopper
web wombat
webbandit
webcatcher
webcopy
webfoot
weblayers
weblinker
weblog monitor
webmirror
webmonkey
webquest
webreaper
websitepulse
websnarf
webstolperer
webvac
webwalk
webwatch
webwombat
webzinger
whizbang
whowhere
wild ferret
worldlight
wwwc
wwwster
xenu
xget
xift
xirq
yandex
yanga
yeti
yodao
zao
zippp
zyborg',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (266,0,'config','config_shared','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (265,0,'config','config_secure','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (264,0,'config','config_fraud_status_id','7',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (263,0,'config','config_fraud_score','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (262,0,'config','config_fraud_key','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (94,0,'voucher','voucher_sort_order','8',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (95,0,'voucher','voucher_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (261,0,'config','config_fraud_detection','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (260,0,'config','config_mail_alert','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (103,0,'free_checkout','free_checkout_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (104,0,'free_checkout','free_checkout_order_status_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (259,0,'config','config_mail','a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}',1);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (258,0,'config','config_ftp_status','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (257,0,'config','config_ftp_root','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (256,0,'config','config_ftp_password','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (255,0,'config','config_ftp_username','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (254,0,'config','config_ftp_port','21',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (253,0,'config','config_ftp_hostname','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (252,0,'config','config_image_location_height','50',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (251,0,'config','config_image_location_width','268',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (250,0,'config','config_image_cart_height','47',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (249,0,'config','config_image_cart_width','47',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (248,0,'config','config_image_wishlist_height','47',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (181,0,'config','config_meta_title','Your Store',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (182,0,'config','config_meta_description','My Store',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (183,0,'config','config_meta_keyword','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (184,0,'config','config_template','default',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (185,0,'config','config_layout_id','4',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (186,0,'config','config_country_id','222',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (187,0,'config','config_zone_id','3563',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (188,0,'config','config_language','en',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (189,0,'config','config_admin_language','en',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (190,0,'config','config_currency','USD',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (191,0,'config','config_currency_auto','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (192,0,'config','config_length_class_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (193,0,'config','config_weight_class_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (194,0,'config','config_product_count','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (195,0,'config','config_product_limit','15',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (196,0,'config','config_product_description_length','100',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (197,0,'config','config_limit_admin','20',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (198,0,'config','config_review_status','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (199,0,'config','config_review_guest','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (200,0,'config','config_review_mail','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (201,0,'config','config_voucher_min','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (202,0,'config','config_voucher_max','1000',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (203,0,'config','config_tax','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (204,0,'config','config_tax_default','shipping',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (205,0,'config','config_tax_customer','shipping',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (206,0,'config','config_customer_online','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (207,0,'config','config_customer_group_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (208,0,'config','config_customer_group_display','a:1:{i:0;s:1:"1";}',1);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (209,0,'config','config_customer_price','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (210,0,'config','config_account_id','3',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (211,0,'config','config_account_mail','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (212,0,'config','config_invoice_prefix','INV-2013-00',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (283,0,'config','config_api_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (214,0,'config','config_cart_weight','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (215,0,'config','config_checkout_guest','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (216,0,'config','config_checkout_id','5',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (217,0,'config','config_order_status_id','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (218,0,'config','config_processing_status','a:1:{i:0;s:1:"2";}',1);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (219,0,'config','config_complete_status','a:1:{i:0;s:1:"5";}',1);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (220,0,'config','config_order_mail','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (221,0,'config','config_stock_display','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (222,0,'config','config_stock_warning','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (223,0,'config','config_stock_checkout','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (224,0,'config','config_affiliate_approval','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (225,0,'config','config_affiliate_auto','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (226,0,'config','config_affiliate_commission','5',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (227,0,'config','config_affiliate_id','4',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (228,0,'config','config_affiliate_mail','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (229,0,'config','config_return_id','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (230,0,'config','config_return_status_id','2',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (231,0,'config','config_logo','catalog/logo.png',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (232,0,'config','config_icon','catalog/cart.png',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (233,0,'config','config_image_category_width','80',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (234,0,'config','config_image_category_height','80',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (235,0,'config','config_image_thumb_width','228',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (236,0,'config','config_image_thumb_height','228',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (237,0,'config','config_image_popup_width','500',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (238,0,'config','config_image_popup_height','500',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (239,0,'config','config_image_product_width','228',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (240,0,'config','config_image_product_height','228',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (241,0,'config','config_image_additional_width','74',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (242,0,'config','config_image_additional_height','74',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (243,0,'config','config_image_related_width','80',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (244,0,'config','config_image_related_height','80',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (245,0,'config','config_image_compare_width','90',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (246,0,'config','config_image_compare_height','90',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (247,0,'config','config_image_wishlist_width','47',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (180,0,'config','config_comment','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (179,0,'config','config_open','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (178,0,'config','config_image','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (177,0,'config','config_fax','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (176,0,'config','config_telephone','123456789',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (280,0,'config','config_email','npshopweb@gmail.com',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (174,0,'config','config_geocode','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (172,0,'config','config_owner','Your Name',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (173,0,'config','config_address','Address 1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (171,0,'config','config_name','Your Store',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (268,0,'config','config_seo_url','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (269,0,'config','config_file_max_size','300000',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (270,0,'config','config_file_ext_allowed','zip
txt
png
jpe
jpeg
jpg
gif
bmp
ico
tiff
tif
svg
svgz
zip
rar
msi
cab
mp3
qt
mov
pdf
psd
ai
eps
ps
doc',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (271,0,'config','config_file_mime_allowed','text/plain
image/png
image/jpeg
image/gif
image/bmp
image/tiff
image/svg+xml
application/zip
&quot;application/zip&quot;
application/x-zip
&quot;application/x-zip&quot;
application/x-zip-compressed
&quot;application/x-zip-compressed&quot;
application/rar
&quot;application/rar&quot;
application/x-rar
&quot;application/x-rar&quot;
application/x-rar-compressed
&quot;application/x-rar-compressed&quot;
application/octet-stream
&quot;application/octet-stream&quot;
audio/mpeg
video/quicktime
application/pdf',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (272,0,'config','config_maintenance','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (273,0,'config','config_password','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (282,0,'config','config_encryption','abc1a3e2d700d4f68ecc228602acb8b9',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (275,0,'config','config_compression','0',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (276,0,'config','config_error_display','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (277,0,'config','config_error_log','1',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (278,0,'config','config_error_filename','error.log',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (279,0,'config','config_google_analytics','',0);
insert into `setting`(`setting_id`,`store_id`,`code`,`key`,`value`,`serialized`) values (281,0,'config','config_url','http://localhost/npshop/',0);
