Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 482BF48DB10
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PL-0002Qe-GL; Thu, 13 Jan 2022 15:53:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n7aqb-0007fW-9Q
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 10:27:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bq/EV5whRByTBzcA7NkMG0ZHqS/XeQEEEioGL5IxVZo=; b=KbAuJ1hCp1L0B+u7wljP/DmfsD
 NR/49SGXnGRAN9IBq1mEyAfns+1+AUXLbKPx2S1Ftx5B3hJibBWzptJZQP8BIJMR42wfcS2Jbzwjl
 5WceupFtvWixxXPHaqzATUztbC24WcXJSID3txIvGS/vjEJSxggZHH0JFbouyDv+GZqE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bq/EV5whRByTBzcA7NkMG0ZHqS/XeQEEEioGL5IxVZo=; b=cazFcQjqEahgpfRvqATpoeSzwB
 qcQBmJvZ6OzLEq8va0aQ8UYHJDgsR642aqfzbXbb8nR6qAcXoyqPuK8Y72glPqdY9P82hE8BMu1sW
 IkTdYeJpB+BndLNlwXbS7OkfLey1psjMv4u6oufa6TmoLEl53Lit/ktqIWvLpz6FwJyE=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n7aqp-0000rM-US
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 10:27:36 +0000
Received: by mail-pj1-f43.google.com with SMTP id
 a1-20020a17090a688100b001b3fd52338eso2761935pjd.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Jan 2022 02:27:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bq/EV5whRByTBzcA7NkMG0ZHqS/XeQEEEioGL5IxVZo=;
 b=xL+5d9SQT8VAUEQxYPI6fFZHTpzLtd53AFe+ZjN7x0n1EqpWSZdbk64bonLJxok1FA
 47CGn3Phs7M4V2zamfpkcul6fJcN1+UU9byFt22qEl0qZxjVKw9e7ZHQrgvaxNf1wPIO
 Etri55aQdP335J144gWIN3fqnZoMEEVXaongRlpD/XdZJrPzHNgAN+VWfyGc8toV6Uue
 FVFqWbat9Ec7p6QoUeJIcGQqvESZUL8+AjIb3GAGAd1BlpSRn8MF9pW5si+GplShxjDq
 IfDqEsWkfeas+FH0IIMzy7Px+6L7fFRpvpjQU0O3Il63dQOQlmvQQ/y1K3Sn/ktGgPHq
 Qimw==
X-Gm-Message-State: AOAM532vqOVv5UunZXXLBct3muT/VhljrFEBcJX+Th/6PMyCvkd4uK7D
 EmSlY5TJ9hg8Whce4t4Z2t5D3z6eT+LM5rWI
X-Google-Smtp-Source: ABdhPJwzMcThfJvPAI1cbTv14cYnzylmOHWxRYabL9Wl3FKpiV5xhoJJWK4xsgc91S7D6u8CDX9Vhg==
X-Received: by 2002:a17:903:124c:b0:149:b16d:917e with SMTP id
 u12-20020a170903124c00b00149b16d917emr9113834plh.91.1641983246157; 
 Wed, 12 Jan 2022 02:27:26 -0800 (PST)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com.
 [209.85.214.169])
 by smtp.gmail.com with ESMTPSA id d12sm14074671pfv.172.2022.01.12.02.27.25
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Jan 2022 02:27:25 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id a7so744751plh.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Jan 2022 02:27:25 -0800 (PST)
X-Received: by 2002:a05:6102:21dc:: with SMTP id
 r28mr3809205vsg.57.1641983234508; 
 Wed, 12 Jan 2022 02:27:14 -0800 (PST)
MIME-Version: 1.0
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de> <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
In-Reply-To: <20220112085009.dbasceh3obfok5dc@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Jan 2022 11:27:02 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
Message-ID: <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Wed, Jan 12, 2022 at 9:51 AM Uwe Kleine-König
   <u.kleine-koenig@pengutronix.de> wrote: > On Wed, Jan 12, 2022 at 09:33:48AM
    +0100, Geert Uytterhoeven wrote: > > On Mon, Jan 10, 2022 at 10:20 PM And
    [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.43 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.43 listed in list.dnswl.org]
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geert.uytterhoeven[at]gmail.com]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n7aqp-0000rM-US
X-Mailman-Approved-At: Thu, 13 Jan 2022 15:52:57 +0000
Subject: Re: [Openipmi-developer] [PATCH 1/2] platform: make
 platform_get_irq_optional() optional
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKT24gV2VkLCBKYW4gMTIsIDIwMjIgYXQgOTo1MSBBTSBVd2UgS2xlaW5lLUvDtm5p
Zwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBXZWQsIEphbiAx
MiwgMjAyMiBhdCAwOTozMzo0OEFNICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4g
PiBPbiBNb24sIEphbiAxMCwgMjAyMiBhdCAxMDoyMCBQTSBBbmRyZXcgTHVubiA8YW5kcmV3QGx1
bm4uY2g+IHdyb3RlOgo+ID4gPiBPbiBNb24sIEphbiAxMCwgMjAyMiBhdCAwOToxMDoxNFBNICsw
MTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+ID4gPiBPbiBNb24sIEphbiAxMCwgMjAy
MiBhdCAxMDo1NDo0OFBNICswMzAwLCBTZXJnZXkgU2h0eWx5b3Ygd3JvdGU6Cj4gPiA+ID4gPiBU
aGlzIHBhdGNoIGlzIGJhc2VkIG9uIHRoZSBmb3JtZXIgQW5keSBTaGV2Y2hlbmtvJ3MgcGF0Y2g6
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIxMDMz
MTE0NDUyNi4xOTQzOS0xLWFuZHJpeS5zaGV2Y2hlbmtvQGxpbnV4LmludGVsLmNvbS8KPiA+ID4g
PiA+Cj4gPiA+ID4gPiBDdXJyZW50bHkgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHJldHVy
bnMgYW4gZXJyb3IgY29kZSBldmVuIGlmIElSUQo+ID4gPiA+ID4gcmVzb3VyY2Ugc2ltcGx5IGhh
cyBub3QgYmVlbiBmb3VuZC4gSXQgcHJldmVudHMgdGhlIGNhbGxlcnMgZnJvbSBiZWluZwo+ID4g
PiA+ID4gZXJyb3IgY29kZSBhZ25vc3RpYyBpbiB0aGVpciBlcnJvciBoYW5kbGluZzoKPiA+ID4g
PiA+Cj4gPiA+ID4gPiAgICAgcmV0ID0gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCguLi4pOwo+
ID4gPiA+ID4gICAgIGlmIChyZXQgPCAwICYmIHJldCAhPSAtRU5YSU8pCj4gPiA+ID4gPiAgICAg
ICAgICAgICByZXR1cm4gcmV0OyAvLyByZXNwZWN0IGRlZmVycmVkIHByb2JlCj4gPiA+ID4gPiAg
ICAgaWYgKHJldCA+IDApCj4gPiA+ID4gPiAgICAgICAgICAgICAuLi53ZSBnZXQgYW4gSVJRLi4u
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gQWxsIG90aGVyICpfb3B0aW9uYWwoKSBBUElzIHNlZW0gdG8g
cmV0dXJuIDAgb3IgTlVMTCBpbiBjYXNlIGFuIG9wdGlvbmFsCj4gPiA+ID4gPiByZXNvdXJjZSBp
cyBub3QgYXZhaWxhYmxlLiBMZXQncyBmb2xsb3cgdGhpcyBnb29kIGV4YW1wbGUsIHNvIHRoYXQg
dGhlCj4gPiA+ID4gPiBjYWxsZXJzIHdvdWxkIGxvb2sgbGlrZToKPiA+ID4gPiA+Cj4gPiA+ID4g
PiAgICAgcmV0ID0gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCguLi4pOwo+ID4gPiA+ID4gICAg
IGlmIChyZXQgPCAwKQo+ID4gPiA+ID4gICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ID4gPiA+
ICAgICBpZiAocmV0ID4gMCkKPiA+ID4gPiA+ICAgICAgICAgICAgIC4uLndlIGdldCBhbiBJUlEu
Li4KPiA+ID4gPgo+ID4gPiA+IFRoZSBkaWZmZXJlbmNlIHRvIGdwaW9kX2dldF9vcHRpb25hbCAo
YW5kIG1vc3Qgb3RoZXIgKl9vcHRpb25hbCkgaXMgdGhhdAo+ID4gPiA+IHlvdSBjYW4gdXNlIHRo
ZSBOVUxMIHZhbHVlIGFzIGlmIGl0IHdlcmUgYSB2YWxpZCBHUElPLgo+ID4gPiA+Cj4gPiA+ID4g
QXMgdGhpcyBpc24ndCBnaXZlbiB3aXRoIGZvciBpcnFzLCBJIGRvbid0IHRoaW5rIGNoYW5naW5n
IHRoZSByZXR1cm4KPiA+ID4gPiB2YWx1ZSBoYXMgbXVjaCBzZW5zZS4KPiA+ID4KPiA+ID4gV2Ug
YWN0dWFsbHkgd2FudCBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgdG8gbG9vayBkaWZmZXJl
bnQgdG8gYWxsCj4gPiA+IHRoZSBvdGhlciBfb3B0aW9uYWwoKSBtZXRob2RzIGJlY2F1c2UgaXQg
aXMgbm90IGVxdWl2YWxlbnQuIElmIGl0Cj4gPiA+IGxvb2tzIHRoZSBzYW1lLCBkZXZlbG9wZXJz
IHdpbGwgYXNzdW1lIGl0IGlzIHRoZSBzYW1lLCBhbmQgZ2V0Cj4gPiA+IHRoZW1zZWx2ZXMgaW50
byB0cm91YmxlLgo+ID4KPiA+IERldmVsb3BlcnMgYWxyZWFkeSBhc3N1bWUgaXQgaXMgdGhlIHNh
bWUsIGFuZCB0aHVzIGZvcmdldCB0aGV5IGhhdmUKPiA+IHRvIGNoZWNrIGFnYWluc3QgLUVOWElP
IGluc3RlYWQgb2YgemVyby4KPgo+IElzIHRoaXMgYW4gYWNrIGZvciByZW5hbWluZyBwbGF0Zm9y
bV9nZXRfaXJxX29wdGlvbmFsKCkgdG8KPiBwbGF0Zm9ybV9nZXRfaXJxX3NpbGVudCgpPwoKTm8g
aXQgaXNuJ3QgOy0pCgpJZiBhbiBvcHRpb25hbCBJUlEgaXMgbm90IHByZXNlbnQsIGRyaXZlcnMg
ZWl0aGVyIGp1c3QgaWdub3JlIGl0IChlLmcuCmZvciBkZXZpY2VzIHRoYXQgY2FuIGhhdmUgbXVs
dGlwbGUgaW50ZXJydXB0cyBvciBhIHNpbmdsZSBtdXhlZCBJUlEpLApvciB0aGV5IGhhdmUgdG8g
cmVzb3J0IHRvIHBvbGxpbmcuIEZvciB0aGUgbGF0dGVyLCBmYWxsLWJhY2sgaGFuZGxpbmcKaXMg
bmVlZGVkIGVsc2V3aGVyZSBpbiB0aGUgZHJpdmVyLgpUbyBtZSBpdCBzb3VuZHMgbXVjaCBtb3Jl
IGxvZ2ljYWwgZm9yIHRoZSBkcml2ZXIgdG8gY2hlY2sgaWYgYW4Kb3B0aW9uYWwgaXJxIGlzIG5v
bi16ZXJvIChhdmFpbGFibGUpIG9yIHplcm8gKG5vdCBhdmFpbGFibGUpLCB0aGFuIHRvCnNwcmlu
a2xlIGFyb3VuZCBjaGVja3MgZm9yIC1FTlhJTy4gSW4gYWRkaXRpb24sIHlvdSBoYXZlIHRvIHJl
bWVtYmVyCnRoYXQgdGhpcyBvbmUgcmV0dXJucyAtRU5YSU8sIHdoaWxlIG90aGVyIEFQSXMgdXNl
IC1FTk9FTlQgb3IgLUVOT1NZUwoob3Igc29tZSBvdGhlciBlcnJvciBjb2RlKSB0byBpbmRpY2F0
ZSBhYnNlbmNlLiBJIHRob3VnaHQgbm90IGhhdmluZwp0byBjYXJlIGFib3V0IHRoZSBhY3R1YWwg
ZXJyb3IgY29kZSB3YXMgdGhlIG1haW4gcmVhc29uIGJlaGluZCB0aGUKaW50cm9kdWN0aW9uIG9m
IHRoZSAqX29wdGlvbmFsKCkgQVBJcy4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAg
ICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMg
b2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFs
IGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFj
a2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9n
cmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBt
aS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9y
Z2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
