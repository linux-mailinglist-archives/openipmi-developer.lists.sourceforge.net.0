Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 585E95648F8
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:02 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DL-00071s-3y; Sun, 03 Jul 2022 18:20:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <jk@codeconstruct.com.au>)
 id 1o6S03-0000iC-3h; Wed, 29 Jun 2022 07:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eOkMn4BdLyYJIY7WVcJ+BSTGLOGnPlIkZql9k18jmoA=; b=GKraifhSp5rOdyNYf8UIxAxaGt
 q/akHRk5Q2oLItlhXiOYiXH0kcjKK25a1u9gzuU2KBVtICRT38kJO7ZHoYWU+2usJmhvTdHdMufaa
 1GkKxnQ5aSAX0eCDPVet1gwk+wngonlme7W3qRZUe7t3n7MV9diY3257tmaIDQknMm5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=eOkMn4BdLyYJIY7WVcJ+BSTGLOGnPlIkZql9k18jmoA=; b=K+/23nnURbYBtRbQzzpzUKIZwd
 QjtX5w6Nw9PlpWIAweB5GKlHYHjv00Kk4pyJAS0jQ5QZcB1+PSyigRh9u6Cojk9aAGwr0byN/Yxji
 lCvBEOnHFfWPY8U+Bamw+6rhytc5ExiEFhIa2NWYycqhr89eJbuuvC36GQOYNHBeZ/e0=;
Received: from pi.codeconstruct.com.au ([203.29.241.158]
 helo=codeconstruct.com.au)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o6S01-00016j-S1; Wed, 29 Jun 2022 07:20:35 +0000
Received: from pecola.lan (unknown [159.196.93.152])
 by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A134D2003E;
 Wed, 29 Jun 2022 15:03:54 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=codeconstruct.com.au; s=2022a; t=1656486296;
 bh=eOkMn4BdLyYJIY7WVcJ+BSTGLOGnPlIkZql9k18jmoA=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References;
 b=X7tGIzHuAeR/JUSExm+e5NjDSQiwRlcdLfVuh9BkZ2pwDGDpHHek3GUutn7eXKhIE
 EpfLc4w6v3z3ma2rzovh8SXsx0UT6Lnr2obQLRC/B6zKPNgstpxn2MaLyeRg8ol+TC
 FLINtxlpAhbOodDw55rvd2YD5Xl7MpK6vuYF3VMycl4RQqdOBa3inRxzqeLpNKaY+p
 /7DFa6+k09qnV5w+CfRsa+Ldq7puU1Fz8pggPNk/5uHusxFiSYWyJk2W4DNn1lxElh
 eikxJ0l3lmiTV2R1HDTxFvJXUW2A/vCji2H+MMwMsJAaw+VUIG0cxjxBPsfraFCXVz
 eAIJyO4Km+y8Q==
Message-ID: <60cc6796236f23c028a9ae76dbe00d1917df82a5.camel@codeconstruct.com.au>
From: Jeremy Kerr <jk@codeconstruct.com.au>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, 
 Wolfram Sang <wsa@kernel.org>
Date: Wed, 29 Jun 2022 15:03:54 +0800
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
User-Agent: Evolution 3.44.0-2 
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, Looks good - just one minor change for the mctp-i2c
    driver, but only worthwhile if you end up re-rolling this series for other
    reasons: > -static int mctp_i2c_remove(struct i2c_client *client) > +static
    void mctp_i2c_remove(struct i2c_client *client) >  { >         struct
    mctp_i2c_client *mcli = i2c_get_clientdata(client); > [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: codeconstruct.com.au]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1o6S01-00016j-S1
X-Mailman-Approved-At: Sun, 03 Jul 2022 18:20:54 +0000
Subject: Re: [Openipmi-developer] [PATCH 6/6] i2c: Make remove callback
 return void
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Ricardo Ribalda <ribalda@kernel.org>,
 Jimmy Su <jimmy.su@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Linus Walleij <linus.walleij@linaro.org>, Sekhar Nori <nsekhar@ti.com>,
 Gwendal Grignou <gwendal@chromium.org>, dri-devel@lists.freedesktop.org,
 Jaroslav Kysela <perex@perex.cz>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Paul Mackerras <paulus@samba.org>,
 Moses Christopher Bollavarapu <mosescb.dev@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Evgeniy Polyakov <zbr@ioremap.net>, Matt Johnston <matt@codeconstruct.com.au>,
 Olli Salonen <olli.salonen@iki.fi>, Angela Czubak <acz@semihalf.com>,
 Robert Marko <robert.marko@sartura.hr>, Luka Perkov <luka.perkov@sartura.hr>,
 Sean Young <sean@mess.org>, Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Zheyu Ma <zheyuma97@gmail.com>,
 Javier Martinez Canillas <javierm@redhat.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Chanwoo Choi <cw00.choi@samsung.com>, linux-omap@vger.kernel.org,
 Antti Palosaari <crope@iki.fi>, Wenyou Yang <wenyou.yang@microchip.com>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Miaoqian Lin <linmq006@gmail.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>, lijian <lijian@yulong.com>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Viorel Suman <viorel.suman@nxp.com>, Petr Machata <petrm@nvidia.com>,
 Guido =?ISO-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
 Jean Delvare <jdelvare@suse.com>, linux-serial@vger.kernel.org,
 linux-pm@vger.kernel.org, Eddie James <eajames@linux.ibm.com>,
 Riku Voipio <riku.voipio@iki.fi>, James Schulman <james.schulman@cirrus.com>,
 Scott Wood <oss@buserror.net>, Cai Huoqing <cai.huoqing@linux.dev>,
 Jonas Malaco <jonas@protocubo.io>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Haibo Chen <haibo.chen@nxp.com>, Petr Cvek <petrcvekcz@gmail.com>,
 linux-leds@vger.kernel.org, Joe Tessler <jrt@google.com>,
 Andrey Konovalov <andreyknvl@gmail.com>, Andy Shevchenko <andy@kernel.org>,
 Robert Jones <rjones@gateworks.com>,
 George Joseph <george.joseph@fairview5.com>,
 Vincent Knecht <vincent.knecht@mailoo.org>,
 Robin van der Gracht <robin@protonic.nl>, Randy Dunlap <rdunlap@infradead.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Michael Tretter <m.tretter@pengutronix.de>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Phong LE <ple@baylibre.com>,
 Daniel Beer <daniel.beer@igorinstitute.com>,
 Krzysztof Opasiak <k.opasiak@samsung.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-crypto@vger.kernel.org,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Heungjun Kim <riverful.kim@samsung.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, David Lin <CTLIN0@nuvoton.com>,
 Vladimir Oltean <olteanv@gmail.com>, David Rhodes <david.rhodes@cirrus.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>,
 Jean-Baptiste Maneyrol <jean-baptiste.maneyrol@tdk.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dan Robertson <dan@dlrobertson.com>,
 Martyn Welch <martyn.welch@collabora.co.uk>, Jiri Slaby <jirislaby@kernel.org>,
 devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Jon Nettleton <jon.nettleton@gmail.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 Marco Felsch <m.felsch@pengutronix.de>,
 Wim Van Sebroeck <wim@linux-watchdog.org>, Sebastian Reichel <sre@kernel.org>,
 Max Filippov <jcmvbkbc@gmail.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>, linux-i2c@vger.kernel.org,
 Martiros Shakhzadyan <vrzh@vrzh.net>, Guenter Roeck <groeck@chromium.org>,
 Matthias Schwarzott <zzam@gentoo.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Eric Dumazet <edumazet@google.com>,
 Marek =?ISO-8859-1?Q?Beh=FAn?= <kabel@kernel.org>,
 Saranya Gopal <saranya.gopal@intel.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Corey Minyard <minyard@acm.org>, Evgeny Novikov <novikov@ispras.ru>,
 Frank Rowand <frowand.list@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Manivannan Sadhasivam <mani@kernel.org>,
 Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
 Minghao Chi <chi.minghao@zte.com.cn>, linux-clk@vger.kernel.org,
 Nathan Chancellor <nathan@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Charles Gorand <charles.gorand@effinnov.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Vijendar Mukunda <Vijendar.Mukunda@amd.com>, Miguel Ojeda <ojeda@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Tianshu Qiu <tian.shu.qiu@intel.com>, Martin Donnelly <martin.donnelly@ge.com>,
 Woojung Huh <woojung.huh@microchip.com>, Rudolf Marek <r.marek@assembler.cz>,
 Charles Keepax <ckeepax@opensource.cirrus.com>, linux-watchdog@vger.kernel.org,
 Michael Hennerich <michael.hennerich@analog.com>,
 Ido Schimmel <idosch@nvidia.com>, acpi4asus-user@lists.sourceforge.net,
 Simon Trimmer <simont@opensource.cirrus.com>,
 Ricard Wanderlof <ricardw@axis.com>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Alex Deucher <alexander.deucher@amd.com>, Jiri Valek - 2N <valek@2n.cz>,
 linux-rpi-kernel@lists.infradead.org, Biju Das <biju.das.jz@bp.renesas.com>,
 Wayne Chang <waynec@nvidia.com>, Chen-Yu Tsai <wens@csie.org>,
 Sing-Han Chen <singhanc@nvidia.com>, linux-arm-kernel@lists.infradead.org,
 Niklas =?ISO-8859-1?Q?S=F6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Hans de Goede <hdegoede@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Maslov Dmitry <maslovdmitry@seeed.cc>, linux-gpio@vger.kernel.org,
 Jens Frederich <jfrederich@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-media@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-usb@vger.kernel.org,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, CGEL ZTE <cgel.zte@gmail.com>,
 Colin Leroy <colin@colino.net>, platform-driver-x86@vger.kernel.org,
 linux-integrity@vger.kernel.org, Kevin Tsai <ktsai@capellamicro.com>,
 Pali =?ISO-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Daniel Palmer <daniel@0x0f.com>, Arec Kao <arec.kao@intel.com>,
 Crt Mori <cmo@melexis.com>, Jose Cazarin <joseespiriki@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Tom Rix <trix@redhat.com>, Michael Turquette <mturquette@baylibre.com>,
 Peter Senna Tschudin <peter.senna@gmail.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Nuno =?ISO-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
 Jan-Simon Moeller <jansimon.moeller@gmx.de>,
 Wei Yongjun <weiyongjun1@huawei.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nikita Travkin <nikita@trvn.ru>,
 Jasmin Jessich <jasmin@anw.at>, Sam Ravnborg <sam@ravnborg.org>,
 Kevin Cernekee <cernekee@chromium.org>,
 Alyssa Rosenzweig <alyssa@rosenzweig.io>, linux-rtc@vger.kernel.org,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Lucas Tanure <tanureal@opensource.cirrus.com>,
 Stefan Mavrodiev <stefan@olimex.com>, Masahiro Yamada <masahiroy@kernel.org>,
 Sylvain Petinot <sylvain.petinot@foss.st.com>, netdev@vger.kernel.org,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Xin Ji <xji@analogixsemi.com>,
 Seven Lee <wtli@nuvoton.com>, Matt Ranostay <matt.ranostay@konsulko.com>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
 Adrien Grassein <adrien.grassein@gmail.com>,
 Yang Yingliang <yangyingliang@huawei.com>, chrome-platform@lists.linux.dev,
 Mats Randgaard <matrandg@cisco.com>, Paolo Abeni <pabeni@redhat.com>,
 Alexey Dobriyan <adobriyan@gmail.com>, linux-input@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Lyude Paul <lyude@redhat.com>,
 Kees Cook <keescook@chromium.org>,
 Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>,
 Jonas Karlman <jonas@kwiboo.se>, Yang Li <yang.lee@linux.alibaba.com>,
 Tim Harvey <tharvey@gateworks.com>, Jiri Kosina <jikos@kernel.org>,
 Akinobu Mita <akinobu.mita@gmail.com>, Mark Gross <markgross@kernel.org>,
 Richard Fitzgerald <rf@opensource.cirrus.com>, Mark Brown <broonie@kernel.org>,
 wengjianfeng <wengjianfeng@yulong.com>, Maxime Ripard <maxime@cerno.tech>,
 Sven Peter <sven@svenpeter.dev>, Martin Kepplinger <martink@posteo.de>,
 openipmi-developer@lists.sourceforge.net,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Benson Leung <bleung@chromium.org>,
 "Daniel W. S. Almeida" <dwlsalmeida@gmail.com>,
 Chiranjeevi Rapolu <chiranjeevi.rapolu@intel.com>,
 Alessandro Zummo <a.zummo@towertech.it>, linux-hwmon@vger.kernel.org,
 Felipe Balbi <balbi@kernel.org>, Stephan Gerhold <stephan@gerhold.net>,
 Support Opensource <support.opensource@diasemi.com>,
 Alexandru Ardelean <ardeleanalex@gmail.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marc Hulsman <m.hulsman@tudelft.nl>, Corentin Chary <corentin.chary@gmail.com>,
 Stephen Kitt <steve@sk2.org>, Daniel Scally <djrscally@gmail.com>,
 linux-fbdev@vger.kernel.org, Andrey Ryabinin <ryabinin.a.a@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Kirill Shilimanov <kirill.shilimanov@huawei.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, patches@opensource.cirrus.com,
 Zheng Yongjun <zhengyongjun3@huawei.com>,
 Alejandro Tafalla <atafalla@dnyon.com>, Peter Rosin <peda@axentia.se>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>,
 Hector Martin <marcan@marcan.st>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nick Dyer <nick@shmanahar.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tony Lindgren <tony@atomide.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Takashi Iwai <tiwai@suse.com>,
 Paul Cercueil <paul@crapouillou.net>,
 George McCollister <george.mccollister@gmail.com>,
 Mac Chiang <mac.chiang@intel.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Alexander Potapenko <glider@google.com>, linux-staging@lists.linux.dev,
 Adam Ford <aford173@gmail.com>, Peter Huewe <peterhuewe@gmx.de>,
 UNGLinuxDriver@microchip.com, Lee Jones <lee.jones@linaro.org>,
 linux-mtd@lists.infradead.org, Alexey Khoroshilov <khoroshilov@ispras.ru>,
 Marek Vasut <marex@denx.de>, Yizhuo <yzhai003@ucr.edu>,
 alsa-devel@alsa-project.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Eric Piel <eric.piel@tremplin-utc.net>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Tobias Schrammm <t.schramm@manjaro.org>, Richard Weinberger <richard@nod.at>,
 Tomasz Duszynski <tduszyns@gmail.com>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Russell King <linux@armlinux.org.uk>,
 linux-pwm@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas Zimmermann <tzimmermann@suse.de>, Bastien Nocera <hadess@hadess.net>,
 Jingoo Han <jingoohan1@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Shawn Tu <shawnx.tu@intel.com>,
 Leon Luo <leonl@leopardimaging.com>, Yan Lei <yan_lei@dahuatech.com>,
 Akihiro Tsukada <tskd08@gmail.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Dmitry Rokosov <DDRokosov@sberdevices.ru>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 Alistair Francis <alistair@alistair23.me>,
 Dongliang Mu <mudongliangabcd@gmail.com>,
 Jonathan =?ISO-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
 Eduardo Valentin <edubezval@gmail.com>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Michael Srba <Michael.Srba@seznam.cz>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, kasan-dev@googlegroups.com,
 "Paul J. Murphy" <paul.j.murphy@intel.com>,
 Nicola Lunghi <nick83ola@gmail.com>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
 Dmitry Vyukov <dvyukov@google.com>,
 Ramesh Shanmugasundaram <rashanmu@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Juerg Haefliger <juergh@gmail.com>,
 Oder Chiou <oder_chiou@realtek.com>, Shengjiu Wang <shengjiu.wang@nxp.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Robert Foss <robert.foss@linaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Alvin =?UTF-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Luca Ceresoli <luca@lucaceresoli.net>,
 =?ISO-8859-1?Q?Jos=E9_Exp=F3sito?= <jose.exposito89@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Colin Ian King <colin.king@intel.com>,
 Maximilian Luz <luzmaximilian@gmail.com>, Helge Deller <deller@gmx.de>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKTG9va3MgZ29vZCAtIGp1c3Qgb25lIG1pbm9yIGNoYW5nZSBmb3IgdGhlIG1jdHAt
aTJjIGRyaXZlciwgYnV0IG9ubHkKd29ydGh3aGlsZSBpZiB5b3UgZW5kIHVwIHJlLXJvbGxpbmcg
dGhpcyBzZXJpZXMgZm9yIG90aGVyIHJlYXNvbnM6Cgo+IC1zdGF0aWMgaW50IG1jdHBfaTJjX3Jl
bW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICtzdGF0aWMgdm9pZCBtY3RwX2kyY19y
ZW1vdmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKPiDCoHsKPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IG1jdHBfaTJjX2NsaWVudCAqbWNsaSA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQp
Owo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgbWN0cF9pMmNfZGV2ICptaWRldiA9IE5VTEwsICp0
bXAgPSBOVUxMOwo+IEBAIC0xMDAwLDcgKzEwMDAsNiBAQCBzdGF0aWMgaW50IG1jdHBfaTJjX3Jl
bW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+IMKgwqDCoMKgwqDCoMKgwqBtY3RwX2ky
Y19mcmVlX2NsaWVudChtY2xpKTsKPiDCoMKgwqDCoMKgwqDCoMKgbXV0ZXhfdW5sb2NrKCZkcml2
ZXJfY2xpZW50c19sb2NrKTsKPiDCoMKgwqDCoMKgwqDCoMKgLyogQ2FsbGVycyBpZ25vcmUgcmV0
dXJuIGNvZGUgKi8KPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsKPiDCoH0KClRoZSBjb21tZW50
IHRoZXJlIG5vIGxvbmdlciBtYWtlcyBtdWNoIHNlbnNlLCBJJ2Qgc3VnZ2VzdCByZW1vdmluZyB0
aGF0CnRvby4gRWl0aGVyIHdheToKClJldmlld2VkLWJ5OiBKZXJlbXkgS2VyciA8amtAY29kZWNv
bnN0cnVjdC5jb20uYXU+CgpDaGVlcnMsCgoKSmVyZW15CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
