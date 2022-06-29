Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257D5648F2
	for <lists+openipmi-developer@lfdr.de>; Sun,  3 Jul 2022 20:21:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o84DJ-00070e-Ge; Sun, 03 Jul 2022 18:20:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <peter.senna@gmail.com>)
 id 1o6RdQ-0000MQ-Nb; Wed, 29 Jun 2022 06:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EEF0s3kbEcxLFpcibr8V8xDuFD7v13Z6e3FjeyphC7I=; b=WH9CvZk+n0noG71w/qkqw7G+lz
 hDsLzkVDsFtalMPxhBwcU9prU2pi3+tIHcBr9X/urpQQtnE7fXwUsASrz06hHBVAGXbn9S/9icFhf
 3lGS1nOpn4TqPgoMYskG8YNd2gMhzR5iYVQQo/m1Q2UYdSjVGyp2/LaFKF9r9Z5raaM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=EEF0s3kbEcxLFpcibr8V8xDuFD7v13Z6e3FjeyphC7I=; b=CSgZA4pLTma5EVzi0cuBn2rUgh
 qaXLygOW9aO/GDnCqBxHug5fkda4oEjyblC+YV65u/pHoj4Ob4KIflc9ZflswtRW6FTPii0BpkT6y
 zrR1QcLrCc6NlYKrRJa285FaOJyHAX0KzADxrjgocLx+BRp9Hi2yORCXmHi0xKAgx//8=;
Received: from mail-yw1-f176.google.com ([209.85.128.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o6RdQ-0007tx-MD; Wed, 29 Jun 2022 06:57:13 +0000
Received: by mail-yw1-f176.google.com with SMTP id
 00721157ae682-3137316bb69so138721387b3.10; 
 Tue, 28 Jun 2022 23:57:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EEF0s3kbEcxLFpcibr8V8xDuFD7v13Z6e3FjeyphC7I=;
 b=nsSF081Bg9S2+3GOlTH6XrhfGIPeUmWLWid6ZPtp9lP5RC66qSLIT9lGJdv3V1Ly2H
 4zyK4kb3eQ2X4ixLndS9DBelT4Uu0KqQ91O0V9TVHOakGiKDOprxvNtzMPrSPRgHQ/RA
 B6WUHV404SbHT4BxSq7MWNZNDBbfty+btGHitArFlg7IlsD1ZVV9II4UHdM9N2Vm6oMf
 ekHf7UFTEye1J5kZ+HwASbfVPkcujI28uq996nRSJ1Dx9u0s683SCk0D8q/IOtuDbhzQ
 pEH6P4NQkTD5F02v6fauebs93U42BcmVyM9qdAZNavlYJhyTVwuAFQMk/NeeWlN4OtRW
 yiPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EEF0s3kbEcxLFpcibr8V8xDuFD7v13Z6e3FjeyphC7I=;
 b=gupwXUQto9COUQusdvQ/pT8F9iv6BoChdr63TY3kSM/eAIV8fAVfiPr/oXfbu4GdhF
 jw/RrHwo0g220oYC0gjJgT0SIwsNWDglFhBrHh/sJ+JMXH0HMlUz6qmEuQEj/vG8UmOZ
 noOqrl6+/f5dmGUW44nv6bkKoFpBz/vlg/FKuQdu1AplYU+pl3knulKQ4hButKdM7Elp
 Xbp+kH2+WTAJcFGB1QfQVtid+oT6+nrJpp4xGD663YATAQ+E3Y6FH8OupZfUgiV5RNbN
 in2MJGeFGBzuz5/O7VvDDpIsWVXL2mKDl572z6TlpF+oUR6My/x0Vj9fZd/XUgjWrOQu
 hq0g==
X-Gm-Message-State: AJIora+ZuLijkH/WaP396I7ELdw8UxiT4CVsdHVpov4p0ZCOs2HR/diU
 tvrM3AKs2y2l9QJ3mwlSbHW8+oMdlA9CEVNTR0o=
X-Google-Smtp-Source: AGRyM1uWOHWVu25nP4xyDAyCW1mA6+5zKehfRh4LhyKSqmaNZ4gJWTIyI8cJ8wsZObnjobzQd9R6TNv/4nUq3TdxAlc=
X-Received: by 2002:a81:d91:0:b0:317:9176:56fe with SMTP id
 139-20020a810d91000000b00317917656femr2208847ywn.381.1656485826739; Tue, 28
 Jun 2022 23:57:06 -0700 (PDT)
MIME-Version: 1.0
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
From: Peter Senna Tschudin <peter.senna@gmail.com>
Date: Wed, 29 Jun 2022 08:56:55 +0200
Message-ID: <CA+MoWDrJKP1YHcBwb8AKBr59eymHEZH9QEKEwOWL2pVK1LFDEQ@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 28, 2022 at 4:05 PM Uwe Kleine-König wrote: >
    > From: Uwe Kleine-König > > The value returned by an i2c driver's remove
    function is mostly ignored. > (Only an error message is printe [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.176 listed in wl.mailspike.net]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [peter.senna[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.128.176 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1o6RdQ-0007tx-MD
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
 "David S. Miller" <davem@davemloft.net>, Wolfram Sang <wsa@kernel.org>,
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
 wengjianfeng <wengjianfeng@yulong.com>,
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
 linux-media@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>,
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
 Marek Vasut <marex@denx.de>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 alsa-devel@alsa-project.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Eric Piel <eric.piel@tremplin-utc.net>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Tobias Schrammm <t.schramm@manjaro.org>, Richard Weinberger <richard@nod.at>,
 Tomasz Duszynski <tduszyns@gmail.com>,
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, Russell King <linux@armlinux.org.uk>,
 linux-pwm@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Thomas Zimmermann <tzimmermann@suse.de>, Bastien Nocera <hadess@hadess.net>,
 Jingoo Han <jingoohan1@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Vivien Didelot <vivien.didelot@gmail.com>, Yizhuo <yzhai003@ucr.edu>,
 Shawn Tu <shawnx.tu@intel.com>, Leon Luo <leonl@leopardimaging.com>,
 Yan Lei <yan_lei@dahuatech.com>, Akihiro Tsukada <tskd08@gmail.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Dmitry Rokosov <DDRokosov@sberdevices.ru>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 Alistair Francis <alistair@alistair23.me>,
 Dongliang Mu <mudongliangabcd@gmail.com>,
 =?UTF-8?Q?Jonathan_Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
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

T24gVHVlLCBKdW4gMjgsIDIwMjIgYXQgNDowNSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo8dS5rbGVp
bmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IEZyb206IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Cj4KPiBUaGUgdmFsdWUgcmV0dXJuZWQgYnkgYW4g
aTJjIGRyaXZlcidzIHJlbW92ZSBmdW5jdGlvbiBpcyBtb3N0bHkgaWdub3JlZC4KPiAoT25seSBh
biBlcnJvciBtZXNzYWdlIGlzIHByaW50ZWQgaWYgdGhlIHZhbHVlIGlzIG5vbi16ZXJvIHRoYXQg
dGhlCj4gZXJyb3IgaXMgaWdub3JlZC4pCj4KPiBTbyBjaGFuZ2UgdGhlIHByb3RvdHlwZSBvZiB0
aGUgcmVtb3ZlIGZ1bmN0aW9uIHRvIHJldHVybiBubyB2YWx1ZS4gVGhpcwo+IHdheSBkcml2ZXIg
YXV0aG9ycyBhcmUgbm90IHRlbXB0ZWQgdG8gYXNzdW1lIHRoYXQgcGFzc2luZyBhbiBlcnJvciB0
bwo+IHRoZSB1cHBlciBsYXllciBpcyBhIGdvb2QgaWRlYS4gQWxsIGRyaXZlcnMgYXJlIGFkYXB0
ZWQgYWNjb3JkaW5nbHkuCj4gVGhlcmUgaXMgbm8gaW50ZW5kZWQgY2hhbmdlIG9mIGJlaGF2aW91
ciwgYWxsIGNhbGxiYWNrcyB3ZXJlIHByZXBhcmVkIHRvCj4gcmV0dXJuIDAgYmVmb3JlLgo+Cj4g
U2lnbmVkLW9mZi1ieTogVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4KPiAtLS0KClsuLi5dCgo+ICBzdGF0aWMgc3RydWN0IGkyY19kZXZpY2VfaWQgbHQ5
NjExdXhjX2lkW10gPSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbWVn
YWNoaXBzLXN0ZHB4eHh4LWdlLWI4NTB2My1mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9t
ZWdhY2hpcHMtc3RkcHh4eHgtZ2UtYjg1MHYzLWZ3LmMKPiBpbmRleCBjY2U5OGJmMmE0ZTcuLjlm
MTc1ZGYxMTU4MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL21lZ2FjaGlw
cy1zdGRweHh4eC1nZS1iODUwdjMtZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
bWVnYWNoaXBzLXN0ZHB4eHh4LWdlLWI4NTB2My1mdy5jCj4gQEAgLTM1NSwxMSArMzU1LDkgQEAg
c3RhdGljIGludCBzdGRwNDAyOF9nZV9iODUwdjNfZndfcHJvYmUoc3RydWN0IGkyY19jbGllbnQg
KnN0ZHA0MDI4X2kyYywKPiAgICAgICAgIHJldHVybiBnZV9iODUwdjNfcmVnaXN0ZXIoKTsKPiAg
fQo+Cj4gLXN0YXRpYyBpbnQgc3RkcDQwMjhfZ2VfYjg1MHYzX2Z3X3JlbW92ZShzdHJ1Y3QgaTJj
X2NsaWVudCAqc3RkcDQwMjhfaTJjKQo+ICtzdGF0aWMgdm9pZCBzdGRwNDAyOF9nZV9iODUwdjNf
ZndfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpzdGRwNDAyOF9pMmMpCj4gIHsKPiAgICAgICAg
IGdlX2I4NTB2M19sdmRzX3JlbW92ZSgpOwo+IC0KPiAtICAgICAgIHJldHVybiAwOwo+ICB9Cj4K
PiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIHN0ZHA0MDI4X2dlX2I4NTB2M19m
d19pMmNfdGFibGVbXSA9IHsKPiBAQCAtNDA1LDExICs0MDMsOSBAQCBzdGF0aWMgaW50IHN0ZHAy
NjkwX2dlX2I4NTB2M19md19wcm9iZShzdHJ1Y3QgaTJjX2NsaWVudCAqc3RkcDI2OTBfaTJjLAo+
ICAgICAgICAgcmV0dXJuIGdlX2I4NTB2M19yZWdpc3RlcigpOwo+ICB9Cj4KPiAtc3RhdGljIGlu
dCBzdGRwMjY5MF9nZV9iODUwdjNfZndfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpzdGRwMjY5
MF9pMmMpCj4gK3N0YXRpYyB2b2lkIHN0ZHAyNjkwX2dlX2I4NTB2M19md19yZW1vdmUoc3RydWN0
IGkyY19jbGllbnQgKnN0ZHAyNjkwX2kyYykKPiAgewo+ICAgICAgICAgZ2VfYjg1MHYzX2x2ZHNf
cmVtb3ZlKCk7Cj4gLQo+IC0gICAgICAgcmV0dXJuIDA7Cj4gIH0KPgo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IGkyY19kZXZpY2VfaWQgc3RkcDI2OTBfZ2VfYjg1MHYzX2Z3X2kyY190YWJsZVtdID0g
ewpSZXZpZXdlZC1ieTogUGV0ZXIgU2VubmEgVHNjaHVkaW4gPHBldGVyLnNlbm5hQGdtYWlsLmNv
bT4KClsuLi5dCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
