Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C1FA5648F3
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DK-00071B-9b; Sun, 03 Jul 2022 18:20:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <ryabinin.a.a@gmail.com>)
 id 1o6XT3-0002jR-Su; Wed, 29 Jun 2022 13:10:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VlYfBx7EBUtDE6uBFY9byn1Ncu+EZBKbWlzwPeBiTVc=; b=ajolDxA8IwtITN/mkFK9e9tqpm
 MumMI3mFMsX1U8a5tfap7gmJrWi+brQbGFCo8b/2VvHqcncxWplMYH11OA61tSaIobA24gLXZ4cxU
 ekSotl58j6UvlOw+c7vSEFRhyeiySsKM+FgnXsCQCmaJK9OMRn+h+4zqMxQji1YLCfDk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VlYfBx7EBUtDE6uBFY9byn1Ncu+EZBKbWlzwPeBiTVc=; b=O4naMZutB5eKKILrfXM+fzO16l
 gLGcqoI0OGkssbVXXA4eX4xNHFpOLRZqpdEJfkpUs6P5XIk8CgHuJ2PzKPuXxTMibxuHG9ArWGJue
 hNmBjnyvCknCTJK1C3/6avmVX3tLwzLqI6KaYN2Qh5AEXCrUaf0RVT6oDLau1QCrvcL0=;
Received: from mail-wr1-f52.google.com ([209.85.221.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o6XT3-001934-LG; Wed, 29 Jun 2022 13:10:54 +0000
Received: by mail-wr1-f52.google.com with SMTP id b26so10015176wrc.2;
 Wed, 29 Jun 2022 06:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VlYfBx7EBUtDE6uBFY9byn1Ncu+EZBKbWlzwPeBiTVc=;
 b=frD1ngE13/en6394O8XepcZvUrZBA03m6xml3were+xCmvmDUuk1J0NNZRwyoKaZsM
 5+4VUSvngflolWxauJlu+LvSXiFmOUcfgeF2nk+hKLvW3M/lD+KAnQAe/K2tJyDJNegQ
 Ml4xaICVivn+SaBPSKOxO4SmTbW0RFR+qm9YIHEndJDANW5s32CjRG3ZqGqYACVr1zR6
 IBW3FQPZupJPgkXzmHbMjtbyyoh3Y9pEFiV7KvrmTrDSDw51VwJE0C5uxESvGhzsr89I
 E9VGjTtKiCGJQOwgLuXTvIGM2V5wOy6ufN5mi08u68das+YgUBakXmDUnQl5m6THNyEw
 AA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VlYfBx7EBUtDE6uBFY9byn1Ncu+EZBKbWlzwPeBiTVc=;
 b=6TEYVSFCV3zo31I5hV/gLwU23eevh2ruFDHdBWjVOAR9uzhMECU9PahDbYc3/ne0hr
 cPOKY6ND7hAA4+M92NZx3dU65599UT0pyHuckGumNAqPn0mdwCrED3kMGw0Ci7eH8v91
 7hjcpwqQrfBcWBZftjq5z2l2UnFBseq+SEGNnqI25K5MSA/z1HCs5Rwcu0Jp4iW5LxeE
 ZrTuRSLsD0TO7GOkfmVN/k0vlTAA5+JN0aXcL+VJwYE7nqp6xgLbfERZptYbmNOu4F7C
 7ceB3J6lDhxTyUyxtFiHXUNJSGRoPoEP9cdwapiBTsVvfW1botKoUVG2++9vFMGyMHu6
 HVrg==
X-Gm-Message-State: AJIora9np3jgbSqorXLoPLKd7TtOizYBB/r3Ri+a48+iBAqd5rUUKjCz
 uCBlTEWOqcvW7GK+2Z1POPrmSWR6WjnjynAlPso=
X-Google-Smtp-Source: AGRyM1vJ4Bhi7JcB3Mk7ILH8mUAA6z2j2UT+Dyfz1mp+09MukaINS6AUVoLreV/hTUTvHyU7PGpRXM+ZDF1zXQd6nAY=
X-Received: by 2002:adf:f90c:0:b0:21a:3dcb:d106 with SMTP id
 b12-20020adff90c000000b0021a3dcbd106mr3045617wrr.448.1656508246749; Wed, 29
 Jun 2022 06:10:46 -0700 (PDT)
MIME-Version: 1.0
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
From: Andrey Ryabinin <ryabinin.a.a@gmail.com>
Date: Wed, 29 Jun 2022 16:11:26 +0300
Message-ID: <CAPAsAGwP4Mw_CJfsi7oapABdTBwO1HfiQux6X4UahspU74VjtQ@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
 Wolfram Sang <wsa@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 6/28/22 17:03, Uwe Kleine-König wrote: > From: Uwe Kleine-König
    > > The value returned by an i2c driver's remove function is mostly ignored.
    > (Only an error message is printed if the value is [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.221.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.221.52 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [ryabinin.a.a[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o6XT3-001934-LG
X-Mailman-Approved-At: Sun, 03 Jul 2022 18:20:53 +0000
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
 =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
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
 =?UTF-8?B?TWFyZWsgQmVow7pu?= <kabel@kernel.org>,
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
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Hans de Goede <hdegoede@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Maslov Dmitry <maslovdmitry@seeed.cc>, linux-gpio@vger.kernel.org,
 Jens Frederich <jfrederich@gmail.com>,
 Douglas Anderson <dianders@chromium.org>,
 linux-media <linux-media@vger.kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-usb@vger.kernel.org,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, CGEL ZTE <cgel.zte@gmail.com>,
 Colin Leroy <colin@colino.net>, platform-driver-x86@vger.kernel.org,
 linux-integrity@vger.kernel.org, Kevin Tsai <ktsai@capellamicro.com>,
 =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Daniel Palmer <daniel@0x0f.com>, Arec Kao <arec.kao@intel.com>,
 Crt Mori <cmo@melexis.com>, Jose Cazarin <joseespiriki@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Tom Rix <trix@redhat.com>, Michael Turquette <mturquette@baylibre.com>,
 Peter Senna Tschudin <peter.senna@gmail.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>,
 Jan-Simon Moeller <jansimon.moeller@gmx.de>,
 Wei Yongjun <weiyongjun1@huawei.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nikita Travkin <nikita@trvn.ru>,
 Jeremy Kerr <jk@codeconstruct.com.au>, Jasmin Jessich <jasmin@anw.at>,
 Sam Ravnborg <sam@ravnborg.org>, Kevin Cernekee <cernekee@chromium.org>,
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
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>,
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
 linux-fbdev@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
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
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
 Eduardo Valentin <edubezval@gmail.com>, Rui Miguel Silva <rmfrfs@gmail.com>,
 Michael Srba <Michael.Srba@seznam.cz>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 kasan-dev <kasan-dev@googlegroups.com>,
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
 =?UTF-8?Q?Alvin_=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Luca Ceresoli <luca@lucaceresoli.net>,
 =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Colin Ian King <colin.king@intel.com>,
 Maximilian Luz <luzmaximilian@gmail.com>, Helge Deller <deller@gmx.de>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gNi8yOC8yMiAxNzowMywgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gRnJvbTogVXdlIEts
ZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9yZz4KPgo+IFRoZSB2YWx1ZSByZXR1cm5l
ZCBieSBhbiBpMmMgZHJpdmVyJ3MgcmVtb3ZlIGZ1bmN0aW9uIGlzIG1vc3RseSBpZ25vcmVkLgo+
IChPbmx5IGFuIGVycm9yIG1lc3NhZ2UgaXMgcHJpbnRlZCBpZiB0aGUgdmFsdWUgaXMgbm9uLXpl
cm8gdGhhdCB0aGUKPiBlcnJvciBpcyBpZ25vcmVkLikKPgo+IFNvIGNoYW5nZSB0aGUgcHJvdG90
eXBlIG9mIHRoZSByZW1vdmUgZnVuY3Rpb24gdG8gcmV0dXJuIG5vIHZhbHVlLiBUaGlzCj4gd2F5
IGRyaXZlciBhdXRob3JzIGFyZSBub3QgdGVtcHRlZCB0byBhc3N1bWUgdGhhdCBwYXNzaW5nIGFu
IGVycm9yIHRvCj4gdGhlIHVwcGVyIGxheWVyIGlzIGEgZ29vZCBpZGVhLiBBbGwgZHJpdmVycyBh
cmUgYWRhcHRlZCBhY2NvcmRpbmdseS4KPiBUaGVyZSBpcyBubyBpbnRlbmRlZCBjaGFuZ2Ugb2Yg
YmVoYXZpb3VyLCBhbGwgY2FsbGJhY2tzIHdlcmUgcHJlcGFyZWQgdG8KPiByZXR1cm4gMCBiZWZv
cmUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgo+IC0tLQogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8IDIgKy0KPiAgbGliL0tjb25maWcua2FzYW4gICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHwgMSArCgo+IGRpZmYgLS1naXQgYS9saWIvS2NvbmZpZy5rYXNhbiBiL2xp
Yi9LY29uZmlnLmthc2FuCj4gaW5kZXggZjA5NzNkYTU4M2UwLi4zNjZlNjE2MzljYjIgMTAwNjQ0
Cj4gLS0tIGEvbGliL0tjb25maWcua2FzYW4KPiArKysgYi9saWIvS2NvbmZpZy5rYXNhbgo+IEBA
IC0xNDksNiArMTQ5LDcgQEAgY29uZmlnIEtBU0FOX1NUQUNLCj4gICAgICAgZGVwZW5kcyBvbiBL
QVNBTl9HRU5FUklDIHx8IEtBU0FOX1NXX1RBR1MKPiAgICAgICBkZXBlbmRzIG9uICFBUkNIX0RJ
U0FCTEVfS0FTQU5fSU5MSU5FCj4gICAgICAgZGVmYXVsdCB5IGlmIENDX0lTX0dDQwo+ICsgICAg
IGRlcGVuZHMgb24gIUFSTQo+ICAgICAgIGhlbHAKPiAgICAgICAgIERpc2FibGVzIHN0YWNrIGlu
c3RydW1lbnRhdGlvbiBhbmQgdGh1cyBLQVNBTidzIGFiaWxpdHkgdG8gZGV0ZWN0Cj4gICAgICAg
ICBvdXQtb2YtYm91bmRzIGJ1Z3MgaW4gc3RhY2sgdmFyaWFibGVzLgoKCldoYXQgaXMgdGhpcyBk
b2luZyBoZXJlPwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxp
c3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9s
aXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
