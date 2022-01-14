Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C743048E9D5
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 13:30:33 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8Lif-0002VM-JI; Fri, 14 Jan 2022 12:30:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <peter@korsgaard.com>) id 1n8Gla-0003zc-HS
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 07:13:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6LROpeMg+I6HV2eSWdcgHI9ORrFOPxzwutiqZWkCcAs=; b=dIih1WNmlHlXDEtYW0OqbG2hho
 Tcsr/r7+LkxoOk5NxI/T+UuzArVgU5+waei3jCTxvxh/ohtaZDaqPpjiuF7Sow/BtppZok79xapCV
 Fdgy8use49aLVsCN+kL0n9ekoDD+eD0pyrzc9TdHb11co7+71MtsUFrqtPfEd0DOjXVU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:
 In-Reply-To:Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=6LROpeMg+I6HV2eSWdcgHI9ORrFOPxzwutiqZWkCcAs=; b=OSf1hgY5wsvjDls/dxlFt9R1py
 fPW4YT4sPzsm5dQZmYS3JSeJ834TnlQBf77QJduhJ80WnIDL/ofl2WAxO8YRZTOdJhFfDOjCO9ZnI
 tESB2Havk3HpPqHEbs6nYSVPeagbNYHIWIef2Jtf/WlBR3aszasXfzXutifFLrTL0XMI=;
Received: from mslow1.mail.gandi.net ([217.70.178.240])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8Gln-00FHvU-Ug
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 07:13:13 +0000
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
 by mslow1.mail.gandi.net (Postfix) with ESMTP id 0E539C5F4B
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jan 2022 06:57:37 +0000 (UTC)
Received: (Authenticated sender: peter@korsgaard.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6952FFF805;
 Fri, 14 Jan 2022 06:57:08 +0000 (UTC)
Received: from peko by dell.be.48ers.dk with local (Exim 4.92)
 (envelope-from <peter@korsgaard.com>)
 id 1n8GWI-0002SW-Ku; Fri, 14 Jan 2022 07:57:06 +0100
From: Peter Korsgaard <peter@korsgaard.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
References: <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
Date: Fri, 14 Jan 2022 07:57:06 +0100
In-Reply-To: <20220113194358.xnnbhsoyetihterb@pengutronix.de> ("Uwe
 =?utf-8?Q?Kleine-K=C3=B6nig=22's?= message of "Thu, 13 Jan 2022 20:43:58
 +0100")
Message-ID: <87ilum954t.fsf@dell.be.48ers.dk>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  >>>>> "Uwe" == Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
    writes: > The subsystems regulator, clk and gpio have the concept of a dummy
    > resource. For regulator, clk and gpio there is a semantic difference >
   between the regular _get() function and the _get_optional [...] 
 
 Content analysis details:   (0.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1n8Gln-00FHvU-Ug
X-Mailman-Approved-At: Fri, 14 Jan 2022 12:30:10 +0000
Subject: Re: [Openipmi-developer] [PATCH] driver core: platform: Rename
 platform_get_irq_optional() to platform_get_irq_silent()
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
Cc: Andrew Lunn <andrew@lunn.ch>, Ulf Hansson <ulf.hansson@linaro.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, KVM list <kvm@vger.kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>, "open list:GPIO
 SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>, "open
 list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 Niklas =?utf-8?Q?S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Pj4+Pj4gIlV3ZSIgPT0gVXdlIEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRy
b25peC5kZT4gd3JpdGVzOgoKID4gVGhlIHN1YnN5c3RlbXMgcmVndWxhdG9yLCBjbGsgYW5kIGdw
aW8gaGF2ZSB0aGUgY29uY2VwdCBvZiBhIGR1bW15CiA+IHJlc291cmNlLiBGb3IgcmVndWxhdG9y
LCBjbGsgYW5kIGdwaW8gdGhlcmUgaXMgYSBzZW1hbnRpYyBkaWZmZXJlbmNlCiA+IGJldHdlZW4g
dGhlIHJlZ3VsYXIgX2dldCgpIGZ1bmN0aW9uIGFuZCB0aGUgX2dldF9vcHRpb25hbCgpIHZhcmlh
bnQuCiA+IChPbmUgbWlnaHQgcmV0dXJuIHRoZSBkdW1teSByZXNvdXJjZSwgdGhlIG90aGVyIHdv
bid0LiBVbmZvcnR1bmF0ZWx5CiA+IHdoaWNoIG9uZSBpbXBsZW1lbnRzIHdoaWNoIGlzbid0IHRo
ZSBzYW1lIGZvciB0aGVzZSB0aHJlZS4pIFRoZQogPiBkaWZmZXJlbmNlIGJldHdlZW4gcGxhdGZv
cm1fZ2V0X2lycSgpIGFuZCBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgaXMKID4gb25seSB0
aGF0IHRoZSBmb3JtZXIgbWlnaHQgZW1pdCBhbiBlcnJvciBtZXNzYWdlIGFuZCB0aGUgbGF0ZXIg
d29uJ3QuCgogPiBUbyBwcmV2ZW50IHBlb3BsZSdzIGV4cGVjdGF0aW9ucyB0aGF0IHRoZXJlIGlz
IGEgc2VtYW50aWMgZGlmZmVyZW5jZQogPiBiZXR3ZWVuIHRoZXNlIHRvbywgcmVuYW1lIHBsYXRm
b3JtX2dldF9pcnFfb3B0aW9uYWwoKSB0bwogPiBwbGF0Zm9ybV9nZXRfaXJxX3NpbGVudCgpIHRv
IG1ha2UgdGhlIGFjdHVhbCBkaWZmZXJlbmNlIG1vcmUgb2J2aW91cy4KCiA+IFRoZSAjZGVmaW5l
IGZvciB0aGUgb2xkIG5hbWUgY2FuIGFuZCBzaG91bGQgYmUgcmVtb3ZlZCBvbmNlIGFsbCBwYXRj
aGVzCiA+IGN1cnJlbnRseSBpbiBmbHV4IHN0aWxsIHJlbHlpbmcgb24gcGxhdGZvcm1fZ2V0X2ly
cV9vcHRpb25hbCgpIGFyZQogPiBmaXhlZC4KCiA+IFNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+CgpGb3IgaTJjLW9jb3Jlcy5j
OgoKQWNrZWQtYnk6IFBldGVyIEtvcnNnYWFyZCA8cGV0ZXJAa29yc2dhYXJkLmNvbT4KCi0tIApC
eWUsIFBldGVyIEtvcnNnYWFyZAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKT3BlbmlwbWktZGV2
ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5l
dC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
