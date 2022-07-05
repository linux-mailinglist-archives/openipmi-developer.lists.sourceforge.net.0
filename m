Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DC36356783A
	for <lists+openipmi-developer@lfdr.de>; Tue,  5 Jul 2022 22:14:17 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1o8ow0-0000LJ-Tf; Tue, 05 Jul 2022 20:14:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>)
 id 1o8ou1-0000Il-I5; Tue, 05 Jul 2022 20:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OTC6txqtQct8PJfU00O4zbYgNzmzFUtn37nCnhn8x1k=; b=YwWDgCfhiau2T9HXM6vH3ryVlu
 a6XcDiWoWDWzUQj1W5dHppEoR3GMkE9IyJN2s+xWMgE4EPecOOsX3MaFslh1B/RK9fpxiOnBPO49n
 K+9zAm4oX+4mW+g6mAGZ+MJuR/PyKI4iOcZiJBCbyyizR6HlfDxV6BGYTxhjFNnzeKxU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version:
 References:Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OTC6txqtQct8PJfU00O4zbYgNzmzFUtn37nCnhn8x1k=; b=PEFH9amAG8jVwHJ2dRgKhLYI2/
 8UM+gnnLDEBiQyix9flr9SLZkGo3qUfyiRuBHBVtRzoChqzblyxHyOr+VRRiyIwOef8WJs/QVeKMs
 CJx7ShvAPd6iz4bmheKKbMvMfdIhECoaIzRets2ElMp01GxvTQe6ndw4zDk7uJQqOMUk=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1o8ou0-0004pS-5r; Tue, 05 Jul 2022 20:12:09 +0000
Received: by mail-qk1-f178.google.com with SMTP id n10so9575255qkn.10;
 Tue, 05 Jul 2022 13:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to; bh=OTC6txqtQct8PJfU00O4zbYgNzmzFUtn37nCnhn8x1k=;
 b=jzyDqqOsmOiFQpBNDEIIiq2MN35QtJrUD2/ujzSWycMbbCOOa/kXWzucbOzXvgJPlM
 l41OpTnwJFtVKAh9ESeTZGx5QRNGnFLf7Ve6XK/dYXbRSWYolxdZFruwb2QvUjtDqKp3
 XPq8C5Jcp4JG3opZdh2U+imHALhK3sBAHCCrGSqp8Vv6nsMRfMt39kYqHYOSFDIblB6A
 qByLsJ7MJ8hdI1n2d+9GcDpXsaJ8cJ751FUYmiFAN8pTN8GWtaPdCiQlJR4UCA74w7VK
 BYLuDVNV9YmL+YjlB3aU/m2FQ5afMCy9VI/vJGznIenuOAJI2wSPMGBH0t9pzT1ABtei
 oFrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=OTC6txqtQct8PJfU00O4zbYgNzmzFUtn37nCnhn8x1k=;
 b=hfS6pmbXqoojJXLIEbqwZ2fYXgHkghaGPaK93i/0OUgy2FfZ4LoSaGBShJZI2bYJsB
 VaPbqzmEswUKMUhqmsXwYuKm63m2rBxGnzPurQW+dbzReaMlGs3C7TiG3XG0uO4rKLWB
 76EAjW8689IDo9myxDlQD3gTJ64t+ts6Hr1QICNNpCYa/Y/EEjBNk73eFxLKNUB3SpmZ
 rbJOxtbMtRBOKvYXZzEY1FdOnqQcpDq5A+aVtwV7T0Et9nGqgEc6eaEG4fsl4Y7l6DmR
 oQTN5DYEV1ptoC4Q7i+na2wGbxhRCvkAiRF540NP7UwbTwjKkzXKlKObALo0XipJD3G/
 X7gg==
X-Gm-Message-State: AJIora/zQhY4SuU0zK7JYncWz2bt2LO++35G2xXu8mqhsnqL9we9gOVM
 MewVHSRewQHCyghF6i9O3g==
X-Google-Smtp-Source: AGRyM1v0OJ93Nu3s63zVNhYbXwTamj5LdNYK8gxlMvIKZ0kjVcSqwnmSr3p+XEHk7rqxFSougreCpA==
X-Received: by 2002:a05:620a:385:b0:6af:1f2b:9168 with SMTP id
 q5-20020a05620a038500b006af1f2b9168mr24692503qkm.170.1657051922136; 
 Tue, 05 Jul 2022 13:12:02 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 r8-20020a05620a298800b006b4689e3425sm5643578qkp.129.2022.07.05.13.12.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Jul 2022 13:12:01 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:1895:1b49:2a68:29f7])
 by serve.minyard.net (Postfix) with ESMTPSA id B3B861800BD;
 Tue,  5 Jul 2022 20:11:57 +0000 (UTC)
Date: Tue, 5 Jul 2022 15:11:56 -0500
From: Corey Minyard <minyard@acm.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20220705201156.GL908082@minyard.net>
References: <20220628140313.74984-1-u.kleine-koenig@pengutronix.de>
 <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220628140313.74984-7-u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Jun 28, 2022 at 04:03:12PM +0200, Uwe Kleine-König
    wrote: > From: Uwe Kleine-König <uwe@kleine-koenig.org> > > The value returned
    by an i2c driver's remove function is mostly ignored. > (Onl [...] 
 
 Content analysis details:   (0.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.178 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
X-Headers-End: 1o8ou0-0004pS-5r
X-Mailman-Approved-At: Tue, 05 Jul 2022 20:14:12 +0000
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
Reply-To: minyard@acm.org
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
 Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
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
 Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>,
 Saranya Gopal <saranya.gopal@intel.com>, Lars-Peter Clausen <lars@metafoo.de>,
 Evgeny Novikov <novikov@ispras.ru>, Frank Rowand <frowand.list@gmail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Manivannan Sadhasivam <mani@kernel.org>,
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
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Hans de Goede <hdegoede@redhat.com>, Stephen Boyd <sboyd@kernel.org>,
 Maslov Dmitry <maslovdmitry@seeed.cc>, linux-gpio@vger.kernel.org,
 Jens Frederich <jfrederich@gmail.com>,
 Douglas Anderson <dianders@chromium.org>, linux-media@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>, Wolfram Sang <wsa@kernel.org>,
 Jarkko Sakkinen <jarkko@kernel.org>, linux-usb@vger.kernel.org,
 Jacopo Mondi <jacopo+renesas@jmondi.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, CGEL ZTE <cgel.zte@gmail.com>,
 Colin Leroy <colin@colino.net>, platform-driver-x86@vger.kernel.org,
 linux-integrity@vger.kernel.org, Kevin Tsai <ktsai@capellamicro.com>,
 Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Daniel Palmer <daniel@0x0f.com>, Arec Kao <arec.kao@intel.com>,
 Crt Mori <cmo@melexis.com>, Jose Cazarin <joseespiriki@gmail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-iio@vger.kernel.org,
 Tom Rix <trix@redhat.com>, Michael Turquette <mturquette@baylibre.com>,
 Peter Senna Tschudin <peter.senna@gmail.com>,
 Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
 Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>,
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
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
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
 Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
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
 Alvin =?utf-8?Q?=C5=A0ipraga?= <alsi@bang-olufsen.dk>,
 Luca Ceresoli <luca@lucaceresoli.net>,
 =?utf-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
 Johannes Berg <johannes@sipsolutions.net>,
 Colin Ian King <colin.king@intel.com>,
 Maximilian Luz <luzmaximilian@gmail.com>, Helge Deller <deller@gmx.de>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gVHVlLCBKdW4gMjgsIDIwMjIgYXQgMDQ6MDM6MTJQTSArMDIwMCwgVXdlIEtsZWluZS1Lw7Zu
aWcgd3JvdGU6Cj4gRnJvbTogVXdlIEtsZWluZS1Lw7ZuaWcgPHV3ZUBrbGVpbmUta29lbmlnLm9y
Zz4KPiAKPiBUaGUgdmFsdWUgcmV0dXJuZWQgYnkgYW4gaTJjIGRyaXZlcidzIHJlbW92ZSBmdW5j
dGlvbiBpcyBtb3N0bHkgaWdub3JlZC4KPiAoT25seSBhbiBlcnJvciBtZXNzYWdlIGlzIHByaW50
ZWQgaWYgdGhlIHZhbHVlIGlzIG5vbi16ZXJvIHRoYXQgdGhlCj4gZXJyb3IgaXMgaWdub3JlZC4p
Cj4gCj4gU28gY2hhbmdlIHRoZSBwcm90b3R5cGUgb2YgdGhlIHJlbW92ZSBmdW5jdGlvbiB0byBy
ZXR1cm4gbm8gdmFsdWUuIFRoaXMKPiB3YXkgZHJpdmVyIGF1dGhvcnMgYXJlIG5vdCB0ZW1wdGVk
IHRvIGFzc3VtZSB0aGF0IHBhc3NpbmcgYW4gZXJyb3IgdG8KPiB0aGUgdXBwZXIgbGF5ZXIgaXMg
YSBnb29kIGlkZWEuIEFsbCBkcml2ZXJzIGFyZSBhZGFwdGVkIGFjY29yZGluZ2x5Lgo+IFRoZXJl
IGlzIG5vIGludGVuZGVkIGNoYW5nZSBvZiBiZWhhdmlvdXIsIGFsbCBjYWxsYmFja3Mgd2VyZSBw
cmVwYXJlZCB0bwo+IHJldHVybiAwIGJlZm9yZS4KCkZvciBJUE1JIHBvcnRpb25zIGJlbG93OgoK
QWNrZWQtYnk6IENvcmV5IE1pbnlhcmQgPGNuaW55YXJkQG12aXN0YS5jb20+Cgo+ICAKPiAgc3Rh
dGljIGNvbnN0IHN0cnVjdCBpMmNfZGV2aWNlX2lkIGxjZDJzX2kyY19pZFtdID0gewo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYyBiL2RyaXZlcnMvY2hhci9p
cG1pL2lwbWJfZGV2X2ludC5jCj4gaW5kZXggZGI0MDAzN2ViMzQ3Li5hMGU5ZTgwZDkyZWUgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtYl9kZXZfaW50LmMKPiArKysgYi9kcml2
ZXJzL2NoYXIvaXBtaS9pcG1iX2Rldl9pbnQuYwo+IEBAIC0zNDEsMTQgKzM0MSwxMiBAQCBzdGF0
aWMgaW50IGlwbWJfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkKPiAgCXJldHVybiAw
Owo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IGlwbWJfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpj
bGllbnQpCj4gK3N0YXRpYyB2b2lkIGlwbWJfcmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGll
bnQpCj4gIHsKPiAgCXN0cnVjdCBpcG1iX2RldiAqaXBtYl9kZXYgPSBpMmNfZ2V0X2NsaWVudGRh
dGEoY2xpZW50KTsKPiAgCj4gIAlpMmNfc2xhdmVfdW5yZWdpc3RlcihjbGllbnQpOwo+ICAJbWlz
Y19kZXJlZ2lzdGVyKCZpcG1iX2Rldi0+bWlzY2Rldik7Cj4gLQo+IC0JcmV0dXJuIDA7Cj4gIH0K
PiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTJjX2RldmljZV9pZCBpcG1iX2lkW10gPSB7Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfaXBtYi5jIGIvZHJpdmVycy9jaGFy
L2lwbWkvaXBtaV9pcG1iLmMKPiBpbmRleCBhYjE5YjRiMzMxN2UuLjI1YzAxMGM5ZWMyNSAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2NoYXIvaXBtaS9pcG1pX2lwbWIuYwo+ICsrKyBiL2RyaXZlcnMv
Y2hhci9pcG1pL2lwbWlfaXBtYi5jCj4gQEAgLTQyNCw3ICs0MjQsNyBAQCBzdGF0aWMgdm9pZCBp
cG1pX2lwbWJfcmVxdWVzdF9ldmVudHModm9pZCAqc2VuZF9pbmZvKQo+ICAJLyogV2UgZG9uJ3Qg
ZmV0Y2ggZXZlbnRzIGhlcmUuICovCj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgaXBtaV9pcG1iX3Jl
bW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICtzdGF0aWMgdm9pZCBpcG1pX2lwbWJf
cmVtb3ZlKHN0cnVjdCBpMmNfY2xpZW50ICpjbGllbnQpCj4gIHsKPiAgCXN0cnVjdCBpcG1pX2lw
bWJfZGV2ICppaWRldiA9IGkyY19nZXRfY2xpZW50ZGF0YShjbGllbnQpOwo+ICAKPiBAQCAtNDM4
LDggKzQzOCw2IEBAIHN0YXRpYyBpbnQgaXBtaV9pcG1iX3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVu
dCAqY2xpZW50KQo+ICAJaXBtaV9pcG1iX3N0b3BfdGhyZWFkKGlpZGV2KTsKPiAgCj4gIAlpcG1p
X3VucmVnaXN0ZXJfc21pKGlpZGV2LT5pbnRmKTsKPiAtCj4gLQlyZXR1cm4gMDsKPiAgfQo+ICAK
PiAgc3RhdGljIGludCBpcG1pX2lwbWJfcHJvYmUoc3RydWN0IGkyY19jbGllbnQgKmNsaWVudCkK
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMgYi9kcml2ZXJzL2No
YXIvaXBtaS9pcG1pX3NzaWYuYwo+IGluZGV4IGZjNzQyZWU5YzA0Ni4uMTNkYTAyMWU3YzZiIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvY2hhci9pcG1pL2lwbWlfc3NpZi5jCj4gKysrIGIvZHJpdmVy
cy9jaGFyL2lwbWkvaXBtaV9zc2lmLmMKPiBAQCAtMTI4MSwxMyArMTI4MSwxMyBAQCBzdGF0aWMg
dm9pZCBzaHV0ZG93bl9zc2lmKHZvaWQgKnNlbmRfaW5mbykKPiAgCX0KPiAgfQo+ICAKPiAtc3Rh
dGljIGludCBzc2lmX3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICtzdGF0aWMg
dm9pZCBzc2lmX3JlbW92ZShzdHJ1Y3QgaTJjX2NsaWVudCAqY2xpZW50KQo+ICB7Cj4gIAlzdHJ1
Y3Qgc3NpZl9pbmZvICpzc2lmX2luZm8gPSBpMmNfZ2V0X2NsaWVudGRhdGEoY2xpZW50KTsKPiAg
CXN0cnVjdCBzc2lmX2FkZHJfaW5mbyAqYWRkcl9pbmZvOwo+ICAKPiAgCWlmICghc3NpZl9pbmZv
KQo+IC0JCXJldHVybiAwOwo+ICsJCXJldHVybjsKPiAgCj4gIAkvKgo+ICAJICogQWZ0ZXIgdGhp
cyBwb2ludCwgd2Ugd29uJ3QgZGVsaXZlciBhbnl0aGluZyBhc3ljaHJvbm91c2x5Cj4gQEAgLTEz
MDMsOCArMTMwMyw2IEBAIHN0YXRpYyBpbnQgc3NpZl9yZW1vdmUoc3RydWN0IGkyY19jbGllbnQg
KmNsaWVudCkKPiAgCX0KPiAgCj4gIAlrZnJlZShzc2lmX2luZm8pOwo+IC0KPiAtCXJldHVybiAw
Owo+ICB9Cj4gIAo+ICBzdGF0aWMgaW50IHJlYWRfcmVzcG9uc2Uoc3RydWN0IGkyY19jbGllbnQg
KmNsaWVudCwgdW5zaWduZWQgY2hhciAqcmVzcCkKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9w
ZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
