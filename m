Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E544909FA
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jan 2022 15:08:45 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9Sgb-0006Vt-8T; Mon, 17 Jan 2022 14:08:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n9Rka-0004uj-Li
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 13:08:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LbGCIVR09xEJePWZW3UCqvYJkRRDeetDnk36pAUGg0E=; b=Qc1UN/LBpdV5NoOjcG4giGnAlj
 4erSHegksGbpnQIjG3zd9hkht2WiYSevxzEI+OLPws9Mdse4vhrRBOC7rJ3AQUbzjJxATES/i6SqU
 DG+03dBTxp0BUoVe6yykpVGkBflbV8MmhRbq2QNfhYlRguWN/J2e1HFGLIavyvupzKBs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LbGCIVR09xEJePWZW3UCqvYJkRRDeetDnk36pAUGg0E=; b=mQgvz4FOHnRSY+3B/NBi50g29W
 cERO13QBg4ClMaz82A1BQwQ1uove0DxPZci+rDUG1QDYuiBSP9bVUg5tTrKx/BX91MtRbhnTRJjhc
 zGyA9v4OOBlQd1bQHJ0thLtwGO8WN5gxt1jPkcYUMoHUs2VFOyBAUjfqdUDHOJtuw3x4=;
Received: from mail-ua1-f53.google.com ([209.85.222.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9RkU-0005Lg-72
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 13:08:43 +0000
Received: by mail-ua1-f53.google.com with SMTP id l15so30199385uai.11
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 05:08:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LbGCIVR09xEJePWZW3UCqvYJkRRDeetDnk36pAUGg0E=;
 b=IUeYJVgqt/wBI/8PjuSSktsd+47iEwoaRGqIOi3MQudyti7or449XbWM0g0O899z4L
 +JVUYcAhaLS3pDBBqgG9g27hvW7+4jIXJipfd4gWTfZ0HM9GICjKuqLJpMTSI4O8aYjI
 sAJqDZiNwMOhl80gVkeNobmlE5eVi3X1F7X3AV+CRKn0oLqT6VjnQ5HFTfKC91bAVgy5
 vZuMj02mgrHRGXm5iZuVyGbvLUjX12xEX6xDa4r7fn+lC+/S8RNd9tfLYiiy7AbcCpKz
 //fx/Ies074W2y+sRKjJV+lWdvV/X8VuyDOFwiHDQmBTvsqGggt1LWUbsNYpYVRSvOMI
 mhqQ==
X-Gm-Message-State: AOAM531x8/dRxF9NnWcvd7edXZKO353lAhJw/g0oG147DuF2jdZRnkF2
 xJ2GRUE/bkEw89ZDeRuLxSA9l0Ke6Y5zdw==
X-Google-Smtp-Source: ABdhPJzP8n+bfmuG7cPI+4tcniKTQdF6lX9e4uBioePDyP0QBu+6Al1psj8Z/g/AEP/YM4r72/84Hg==
X-Received: by 2002:ab0:6096:: with SMTP id i22mr7723699ual.92.1642424912443; 
 Mon, 17 Jan 2022 05:08:32 -0800 (PST)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com.
 [209.85.222.48])
 by smtp.gmail.com with ESMTPSA id k18sm919782vsq.25.2022.01.17.05.08.31
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 05:08:32 -0800 (PST)
Received: by mail-ua1-f48.google.com with SMTP id m90so30335079uam.2
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 05:08:31 -0800 (PST)
X-Received: by 2002:a67:e95a:: with SMTP id p26mr3535723vso.38.1642424911445; 
 Mon, 17 Jan 2022 05:08:31 -0800 (PST)
MIME-Version: 1.0
References: <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk> <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
In-Reply-To: <20220117114923.d5vajgitxneec7j7@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Jan 2022 14:08:19 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
Message-ID: <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Mon, Jan 17, 2022 at 12:49 PM Uwe Kleine-König
    <u.kleine-koenig@pengutronix.de> wrote: > On Mon, Jan 17, 2022 at 11:35:52AM
    +0100, Geert Uytterhoeven wrote: > > On Mon, Jan 17, 2022 at 10:24 AM Uw
   [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.53 listed in wl.mailspike.net]
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
X-Headers-End: 1n9RkU-0005Lg-72
X-Mailman-Approved-At: Mon, 17 Jan 2022 14:08:38 +0000
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
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 linux-spi <linux-spi@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
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
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Takashi Iwai <tiwai@suse.com>,
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
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev <netdev@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKT24gTW9uLCBKYW4gMTcsIDIwMjIgYXQgMTI6NDkgUE0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gTW9uLCBKYW4g
MTcsIDIwMjIgYXQgMTE6MzU6NTJBTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
ID4gT24gTW9uLCBKYW4gMTcsIDIwMjIgYXQgMTA6MjQgQU0gVXdlIEtsZWluZS1Lw7ZuaWcKPiA+
IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gPiBPbiBNb24sIEph
biAxNywgMjAyMiBhdCAwOTo0MTo0MkFNICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6
Cj4gPiA+ID4gT24gU2F0LCBKYW4gMTUsIDIwMjIgYXQgOToyMiBQTSBTZXJnZXkgU2h0eWx5b3Yg
PHMuc2h0eWx5b3ZAb21wLnJ1PiB3cm90ZToKPiA+ID4gPiA+IE9uIDEvMTQvMjIgMTE6MjIgUE0s
IFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+ID4gPiA+ID4gPiBZb3UgaGF2ZSB0byB1bmRlcnN0
YW5kIHRoYXQgZm9yIGNsayAoYW5kIHJlZ3VsYXRvciBhbmQgZ3Bpb2QpIE5VTEwgaXMgYQo+ID4g
PiA+ID4gPiB2YWxpZCBkZXNjcmlwdG9yIHRoYXQgY2FuIGFjdHVhbGx5IGJlIHVzZWQsIGl0IGp1
c3QgaGFzIG5vIGVmZmVjdC4gU28KPiA+ID4gPiA+ID4gdGhpcyBpcyBhIGNvbnZlbmllbmNlIHZh
bHVlIGZvciB0aGUgY2FzZSAiSWYgdGhlIGNsay9yZWd1bGF0b3IvZ3Bpb2QgaW4KPiA+ID4gPiA+
ID4gcXVlc3Rpb24gaXNuJ3QgYXZhaWxhYmxlLCB0aGVyZSBpcyBub3RoaW5nIHRvIGRvIi4gVGhp
cyBpcyB3aGF0IG1ha2VzCj4gPiA+ID4gPiA+IGNsa19nZXRfb3B0aW9uYWwoKSBhbmQgdGhlIG90
aGVycyByZWFsbHkgdXNlZnVsIGFuZCBqdXN0aWZpZXMgdGhlaXIKPiA+ID4gPiA+ID4gZXhpc3Rl
bmNlLiBUaGlzIGRvZXNuJ3QgYXBwbHkgdG8gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpLgo+
ID4gPiA+ID4KPiA+ID4gPiA+ICAgIEkgZG8gdW5kZXJzdGFuZCB0aGF0LiBIb3dldmVyLCBJUlFz
IGFyZSBhIGRpZmZlcmVudCBiZWFzdCB3aXRoIHRoZWlyCj4gPiA+ID4gPiBvd24ganVzdGlmaWNh
dGlvbnMuLi4KPiA+ID4gPgo+ID4gPiA+ID4gPiBjbGtfZ2V0X29wdGlvbmFsKCkgaXMgc2FuZSBh
bmQgc2Vuc2libGUgZm9yIGNhc2VzIHdoZXJlIHRoZSBjbGsgbWlnaHQgYmUKPiA+ID4gPiA+ID4g
YWJzZW50IGFuZCBpdCBoZWxwcyB5b3UgYmVjYXVzZSB5b3UgZG9uJ3QgaGF2ZSB0byBkaWZmZXJl
bnRpYXRlIGJldHdlZW4KPiA+ID4gPiA+ID4gIm5vdCBmb3VuZCIgYW5kICJ0aGVyZSBpcyBhbiBh
Y3R1YWwgcmVzb3VyY2UiLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGUgcmVhc29uIGZvciBw
bGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkncyBleGlzdGVuY2UgaXMganVzdCB0aGF0Cj4gPiA+
ID4gPiA+IHBsYXRmb3JtX2dldF9pcnEoKSBlbWl0cyBhbiBlcnJvciBtZXNzYWdlIHdoaWNoIGlz
IHdyb25nIG9yIHN1Ym9wdGltYWwKPiA+ID4gPiA+Cj4gPiA+ID4gPiAgICBJIHRoaW5rIHlvdSBh
cmUgdmVyeSB3cm9uZyBoZXJlLiBUaGUgcmVhbCByZWFzb24gaXMgdG8gc2ltcGxpZnkgdGhlCj4g
PiA+ID4gPiBjYWxsZXJzLgo+ID4gPiA+Cj4gPiA+ID4gSW5kZWVkLgo+ID4gPgo+ID4gPiBUaGUg
Y29tbWl0IHRoYXQgaW50cm9kdWNlZCBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgc2FpZDoK
PiA+ID4KPiA+ID4gICAgICAgICBJbnRyb2R1Y2UgYSBuZXcgcGxhdGZvcm1fZ2V0X2lycV9vcHRp
b25hbCgpIHRoYXQgd29ya3MgbXVjaCBsaWtlCj4gPiA+ICAgICAgICAgcGxhdGZvcm1fZ2V0X2ly
cSgpIGJ1dCBkb2VzIG5vdCBvdXRwdXQgYW4gZXJyb3Igb24gZmFpbHVyZSB0bwo+ID4gPiAgICAg
ICAgIGZpbmQgdGhlIGludGVycnVwdC4KPiA+ID4KPiA+ID4gU28gdGhlIGF1dGhvciBvZiA4OTcz
ZWE0NzkwMWM4MWExOTEyYmQwNWYxNTc3YmVkOWI1YjUyNTA2IGZhaWxlZCB0bwo+ID4gPiBtZW50
aW9uIHRoZSByZWFsIHJlYXNvbj8gT3IgbG9vayBhdAo+ID4gPiAzMWE4ZDhmYTg0YzUxZDNhYjAw
YmYwNTkxNThkNWRlNjE3OGNmODkwOgo+ID4gPgo+ID4gPiAgICAgICAgIFsuLi5dIHVzZSBwbGF0
Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgdG8gZ2V0IHNlY29uZC90aGlyZCBJUlEKPiA+ID4gICAg
ICAgICB3aGljaCBhcmUgb3B0aW9uYWwgdG8gYXZvaWQgYmVsb3cgZXJyb3IgbWVzc2FnZSBkdXJp
bmcgcHJvYmU6Cj4gPiA+ICAgICAgICAgWy4uLl0KPiA+ID4KPiA+ID4gTG9vayB0aHJvdWdoIHRo
ZSBvdXRwdXQgb2YKPiA+ID4KPiA+ID4gICAgICAgICBnaXQgbG9nIC1TcGxhdGZvcm1fZ2V0X2ly
cV9vcHRpb25hbAo+ID4gPgo+ID4gPiB0byBmaW5kIHNldmVyYWwgbW9yZSBvZiB0aGVzZS4KPiA+
Cj4gPiBDb21taXQgODk3M2VhNDc5MDFjODFhMSAoImRyaXZlciBjb3JlOiBwbGF0Zm9ybTogSW50
cm9kdWNlCj4gPiBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkiKSBhbmQgdGhlIHZhcmlvdXMg
Zml4dXBzIGZpeGVkIHRoZSB1Z2x5Cj4gPiBwcmludGluZyBvZiBlcnJvciBtZXNzYWdlcyB0aGF0
IHdlcmUgbm90IGFwcGxpY2FibGUuCj4gPiBJbiBoaW5kc2lnaHQsIHByb2JhYmx5IGNvbW1pdCA3
NzIzZjRjNWVjZGI4ZDgzICgiZHJpdmVyIGNvcmU6Cj4gPiBwbGF0Zm9ybTogQWRkIGFuIGVycm9y
IG1lc3NhZ2UgdG8gcGxhdGZvcm1fZ2V0X2lycSooKSIpIHNob3VsZCBoYXZlCj4gPiBiZWVuIHJl
dmVydGVkIGluc3RlYWQsIHVudGlsIGEgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHdpdGgg
cHJvcGVyCj4gPiBzZW1hbnRpY3Mgd2FzIGludHJvZHVjZWQuCj4KPiBhY2suCj4KPiA+IEJ1dCBh
cyB3ZSB3ZXJlIGFsbCBpbiBhIGh1cnJ5IHRvIGtpbGwgdGhlIG5vbi1hcHBsaWNhYmxlIGVycm9y
Cj4gPiBtZXNzYWdlLCB3ZSB3ZW50IGZvciB0aGUgcXVpY2sgYW5kIGRpcnR5IGZpeC4KPiA+Cj4g
PiA+IEFsc28gSSBmYWlsIHRvIHNlZSBob3cgYSBjYWxsZXIgb2YgKHRvZGF5J3MpIHBsYXRmb3Jt
X2dldF9pcnFfb3B0aW9uYWwoKQo+ID4gPiBpcyBzaW1wbGVyIHRoYW4gYSBjYWxsZXIgb2YgcGxh
dGZvcm1fZ2V0X2lycSgpIGdpdmVuIHRoYXQgdGhlcmUgaXMgbm8KPiA+ID4gc2VtYW50aWMgZGlm
ZmVyZW5jZSBiZXR3ZWVuIHRoZSB0d28uIFBsZWFzZSBzaG93IG1lIGEgc2luZ2xlCj4gPiA+IGNv
bnZlcnNpb24gZnJvbSBwbGF0Zm9ybV9nZXRfaXJxIHRvIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9u
YWwgdGhhdAo+ID4gPiB5aWVsZGVkIGEgc2ltcGxpZmljYXRpb24uCj4gPgo+ID4gVGhhdCdzIGV4
YWN0bHkgd2h5IHdlIHdhbnQgdG8gY2hhbmdlIHRoZSBsYXR0ZXIgdG8gcmV0dXJuIDAgOy0pCj4K
PiBPSy4gU28geW91IGFncmVlIHRvIG15IHN0YXRlbWVudCAiVGhlIHJlYXNvbiBmb3IKPiBwbGF0
Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkncyBleGlzdGVuY2UgaXMganVzdCB0aGF0IHBsYXRmb3Jt
X2dldF9pcnEoKQo+IGVtaXRzIGFuIGVycm9yIG1lc3NhZ2UgWy4uLl0iLiBBY3R1YWxseSB5b3Ug
ZG9uJ3Qgd2FudCB0byBvcHBvc2UgYnV0Cj4gc2F5OiBJdCdzIHVuZm9ydHVuYXRlIHRoYXQgdGhl
IHNpbGVudCB2YXJpYW50IG9mIHBsYXRmb3JtX2dldF9pcnEoKSB0b29rCj4gdGhlIG9idmlvdXMg
bmFtZSBvZiBhIGZ1bmN0aW9uIHRoYXQgY291bGQgaGF2ZSBhbiBpbXByb3ZlZCByZXR1cm4gY29k
ZQo+IHNlbWFudGljLgo+Cj4gU28gbXkgc3VnZ2VzdGlvbiB0byByZW5hbWUgdG9kYXlzIHBsYXRm
b3JtX2dldF9pcnFfb3B0aW9uYWwoKSB0bwo+IHBsYXRmb3JtX2dldF9pcnFfc2lsZW50bHkoKSBh
bmQgdGhlbiBpbnRyb2R1Y2luZwo+IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSB3aXRoIHlv
dXIgc3VnZ2VzdGVkIHNlbWFudGljIHNlZW1zCj4gaW50cmlndWluZyBhbmQgc3RyYWlndCBmb3J3
YXJkIHRvIG1lLgoKSSBkb24ndCByZWFsbHkgc2VlIHRoZSBwb2ludCBvZiBuZWVkaW5nIHBsYXRm
b3JtX2dldF9pcnFfc2lsZW50bHkoKSwKdW5sZXNzIGFzIGFuIGludGVybWVkaWFyeSBzdGVwLCB3
aGVyZSBpdCdzIGdvaW5nIHRvIGJlIHJlbW92ZWQgYWdhaW4Kb25jZSB0aGUgY29udmVyc2lvbiBo
YXMgY29tcGxldGVkLgpTdGlsbCwgdGhlIHJlbmFtZSB3b3VsZCB0b3VjaCBhbGwgdXNlcnMgYXQg
b25jZSBhbnl3YXkuCgo+IEFub3RoZXIgdGhvdWdodDogcGxhdGZvcm1fZ2V0X2lycSBlbWl0cyBh
biBlcnJvciBtZXNzYWdlIGZvciBhbGwKPiBwcm9ibGVtcy4gV291bGRuJ3QgaXQgYmUgY29uc2lz
dGVudCB0byBsZXQgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpCj4gZW1pdCBhbiBlcnJvciBt
ZXNzYWdlIGZvciBhbGwgcHJvYmxlbXMgYnV0ICJub3QgZm91bmQiPwo+IEFsdGVybmF0aXZlbHkg
cmVtb3ZlIHRoZSBlcnJvciBwcmludGsgZnJvbSBwbGF0Zm9ybV9nZXRfaXJxKCkuCgpZZXMsIGFs
bCBwcm9ibGVtcyBidXQgbm90IGZvdW5kIGFyZSByZWFsIGVycm9ycy4KCj4gPiA+IFNvIHlvdSBu
ZWVkIHNvbWUgbW9yZSBlZmZvcnQgdG8gY29udmluY2UgbWUgb2YgeW91ciBQT1YuCj4gPiA+Cj4g
PiA+ID4gRXZlbiBmb3IgY2xvY2tzLCB5b3UgY2Fubm90IGFzc3VtZSB0aGF0IHlvdSBjYW4gYWx3
YXlzIGJsaW5kbHkgdXNlCj4gPiA+ID4gdGhlIHJldHVybmVkIGR1bW15IChhY3R1YWxseSBhIE5V
TEwgcG9pbnRlcikgdG8gY2FsbCBpbnRvIHRoZSBjbGsKPiA+ID4gPiBBUEkuICBXaGlsZSB0aGlz
IHdvcmtzIGZpbmUgZm9yIHNpbXBsZSB1c2UgY2FzZXMsIHdoZXJlIHlvdSBqdXN0Cj4gPiA+ID4g
d2FudCB0byBlbmFibGUvZGlzYWJsZSBhbiBvcHRpb25hbCBjbG9jayAoY2xrX3ByZXBhcmVfZW5h
YmxlKCkgYW5kCj4gPiA+ID4gY2xrX2Rpc2FibGVfdW5wcmVwYXJlKCkpLCBpdCBkb2VzIG5vdCB3
b3JrIGZvciBtb3JlIGNvbXBsZXggdXNlIGNhc2VzLgo+ID4gPgo+ID4gPiBBZ3JlZWQuIEJ1dCBm
b3IgY2xrcyBhbmQgZ3Bpb2RzIGFuZCByZWd1bGF0b3JzIHRoZSBzaW1wbGUgY2FzZSBpcyBxdWl0
ZQo+ID4gPiB1c3VhbC4gRm9yIGlycXMgaXQgaXNuJ3QuCj4gPgo+ID4gSXQgaXMgZm9yIGRldmlj
ZXMgdGhhdCBjYW4gaGF2ZSBlaXRoZXIgc2VwYXJhdGUgaW50ZXJydXB0cywgb3IgYSBzaW5nbGUK
PiA+IG11bHRpcGxleGVkIGludGVycnVwdC4KPiA+Cj4gPiBUaGUgbG9naWMgaW4gZS5nLiBkcml2
ZXJzL3R0eS9zZXJpYWwvc2gtc2NpLmMgYW5kCj4gPiBkcml2ZXJzL3NwaS9zcGktcnNwaS5jIGNv
dWxkIGJlIHNpbXBsaWZpZWQgYW5kIGltcHJvdmVkIChjdXJyZW50bHkKPiA+IGl0IGRvZXNuJ3Qg
aGFuZGxlIGRlZmVycmVkIHByb2JlKSBpZiBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkKPiA+
IHdvdWxkIHJldHVybiAwIGluc3RlYWQgb2YgLUVOWElPLgo+Cj4gTG9va2luZyBhdCBzaC1zY2ku
YyB0aGUgaXJxIGhhbmRsaW5nIGxvZ2ljIGNvdWxkIGJlIGltcHJvdmVkIGV2ZW4KPiB3aXRob3V0
IGEgY2hhbmdlZCBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCk6Cj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy90dHkvc2VyaWFsL3NoLXNjaS5jIGIvZHJpdmVycy90dHkvc2VyaWFsL3NoLXNjaS5j
Cj4gaW5kZXggOTY4OTY3ZDcyMmQ0Li5jN2RjOWZiODQ4NDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy90dHkvc2VyaWFsL3NoLXNjaS5jCj4gKysrIGIvZHJpdmVycy90dHkvc2VyaWFsL3NoLXNjaS5j
Cj4gQEAgLTI4NzMsMTEgKzI4NzMsMTMgQEAgc3RhdGljIGludCBzY2lfaW5pdF9zaW5nbGUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZSAqZGV2LAo+ICAgICAgICAgICogaW50ZXJydXB0IElEIG51bWJl
cnMsIG9yIG11eGVkIHRvZ2V0aGVyIHdpdGggYW5vdGhlciBpbnRlcnJ1cHQuCj4gICAgICAgICAg
Ki8KPiAgICAgICAgIGlmIChzY2lfcG9ydC0+aXJxc1swXSA8IDApCj4gLSAgICAgICAgICAgICAg
IHJldHVybiAtRU5YSU87Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBzY2lfcG9ydC0+aXJxc1sw
XTsKPgo+IC0gICAgICAgaWYgKHNjaV9wb3J0LT5pcnFzWzFdIDwgMCkKPiArICAgICAgIGlmIChz
Y2lfcG9ydC0+aXJxc1sxXSA9PSAtRU5YSU8pCj4gICAgICAgICAgICAgICAgIGZvciAoaSA9IDE7
IGkgPCBBUlJBWV9TSVpFKHNjaV9wb3J0LT5pcnFzKTsgaSsrKQo+ICAgICAgICAgICAgICAgICAg
ICAgICAgIHNjaV9wb3J0LT5pcnFzW2ldID0gc2NpX3BvcnQtPmlycXNbMF07Cj4gKyAgICAgICBl
bHNlIGlmIChzY2lfcG9ydC0+aXJxc1sxXSA8IDApCj4gKyAgICAgICAgICAgICAgIHJldHVybiBz
Y2lfcG9ydC0+aXJxc1sxXTsKPgo+ICAgICAgICAgc2NpX3BvcnQtPnBhcmFtcyA9IHNjaV9wcm9i
ZV9yZWdtYXAocCk7Cj4gICAgICAgICBpZiAodW5saWtlbHkoc2NpX3BvcnQtPnBhcmFtcyA9PSBO
VUxMKSkKPgo+IEFuZCB0aGVuIHRoZSBjb2RlIGZsb3cgaXMgYWN0aXZlbHkgaXJyaXRhdGluZy4g
c2NpX2luaXRfc2luZ2xlKCkgY29waWVzCj4gaXJxc1swXSB0byBhbGwgb3RoZXIgaXJxc1tpXSBh
bmQgdGhlbiBzY2lfcmVxdWVzdF9pcnEoKSBsb29wcyBvdmVyIHRoZQo+IGFscmVhZHkgcmVxdWVz
dGVkIGlycXMgYW5kIGNoZWNrcyBmb3IgZHVwbGljYXRlcy4gQSBzaW5nbGUgcGxhY2UgdGhhdAo+
IGlkZW50aWZpZXMgdGhlIGV4YWN0IHNldCBvZiByZXF1aXJlZCBpcnFzIHdvdWxkIGFscmVhZHkg
aGVscCBhIGxvdC4KClllYWgsIGl0J3MgdWdseSBhbmQgY29udm9sdXRlZCwgbGlrZSB0aGUgd2lk
ZSBzZXQgb2YgaGFyZHdhcmUgdGhlCmRyaXZlciBzdXBwb3J0cy4KCj4gQWxzbyBmb3Igc3BpLXJz
cGkuYyBJIGRvbid0IHNlZSBob3cgcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWVfb3B0aW9uYWwoKQo+
IHJldHVybmluZyAwIGluc3RlYWQgb2YgLUVOWElPIHdvdWxkIGhlbHAuIFBsZWFzZSB0YWxrIGlu
IHBhdGNoZXMuCgotLS0gYS9kcml2ZXJzL3NwaS9zcGktcnNwaS5jCisrKyBiL2RyaXZlcnMvc3Bp
L3NwaS1yc3BpLmMKQEAgLTE0MjAsMTcgKzE0MjAsMjUgQEAgc3RhdGljIGludCByc3BpX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAgICAgICAgY3Rsci0+bWF4X25hdGl2ZV9j
cyA9IHJzcGktPm9wcy0+bnVtX2h3X3NzOwoKICAgICAgICByZXQgPSBwbGF0Zm9ybV9nZXRfaXJx
X2J5bmFtZV9vcHRpb25hbChwZGV2LCAicngiKTsKLSAgICAgICBpZiAocmV0IDwgMCkgeworICAg
ICAgIGlmIChyZXQgPCAwKQorICAgICAgICAgICAgICAgZ290byBlcnJvcjI7CisKKyAgICAgICBp
ZiAoIXJldCkgewogICAgICAgICAgICAgICAgcmV0ID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWVf
b3B0aW9uYWwocGRldiwgIm11eCIpOwotICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCisgICAg
ICAgICAgICAgICBpZiAoIXJldCkKICAgICAgICAgICAgICAgICAgICAgICAgcmV0ID0gcGxhdGZv
cm1fZ2V0X2lycShwZGV2LCAwKTsKKyAgICAgICAgICAgICAgIGlmIChyZXQgPCAwKQorICAgICAg
ICAgICAgICAgICAgICAgICBnb3RvIGVycm9yMjsKKwogICAgICAgICAgICAgICAgaWYgKHJldCA+
PSAwKQogICAgICAgICAgICAgICAgICAgICAgICByc3BpLT5yeF9pcnEgPSByc3BpLT50eF9pcnEg
PSByZXQ7CiAgICAgICAgfSBlbHNlIHsKICAgICAgICAgICAgICAgIHJzcGktPnJ4X2lycSA9IHJl
dDsKICAgICAgICAgICAgICAgIHJldCA9IHBsYXRmb3JtX2dldF9pcnFfYnluYW1lKHBkZXYsICJ0
eCIpOwotICAgICAgICAgICAgICAgaWYgKHJldCA+PSAwKQotICAgICAgICAgICAgICAgICAgICAg
ICByc3BpLT50eF9pcnEgPSByZXQ7CisgICAgICAgICAgICAgICBpZiAocmV0IDwgMCkKKyAgICAg
ICAgICAgICAgICAgICAgICAgZ290byBlcnJvcjI7CisKKyAgICAgICAgICAgICAgIHJzcGktPnR4
X2lycSA9IHJldDsKICAgICAgICB9CgogICAgICAgIGlmIChyc3BpLT5yeF9pcnEgPT0gcnNwaS0+
dHhfaXJxKSB7CgpJIGxpa2UgaXQgd2hlbiB0aGUgImlmIChyZXQgPCApIC4uLiIgZXJyb3IgaGFu
ZGxpbmcgaXMgdGhlIGZpcnN0IGNoZWNrIHRvIGRvLgpXaXRoIC1FTlhJTywgaXQgYmVjb21lcyBt
b3JlIGNvbnZvbHV0ZWQuIGFuZCBsb29rcyBsZXNzIG5pY2UgKElNSE8pLgoKPiBQcmVmZXJhYmx5
IGZpcnN0IHNpbXBsaWZ5IGluLWRyaXZlciBsb2dpYyB0byBtYWtlIHRoZSBjb252ZXJzaW9uIHRv
IHRoZQo+IG5ldyBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgYWN0dWFsbHkgcmV2aWV3YWJs
ZS4KClNvIEkgaGF2ZSB0byBjaG9vc2UgYmV0d2VlbgoKICAgIGlmIChyZXQgPCAwICYmIHJldCAh
PSAtRU5YSU8pCiAgICAgICAgICAgIHJldHVybiByZXQ7CgogICAgaWYgKHJldCkgewogICAgICAg
ICAgICAuLi4KICAgIH0KCmFuZAoKICAgIGlmIChyZXQgPT0gLUVOWElPKSB7CiAgICAgICAgICAg
IC4uLgogICAgfSBlbHNlIGlmIChyZXQgPCAwKQogICAgICAgICAgICByZXR1cm4gcmV0OwogICAg
fQoKd2l0aCB0aGUgZmluYWwgdGFyZ2V0IGJlaW5nCgogICAgaWYgKHJldCA8IDApCiAgICAgICAg
ICAgIHJldHVybiByZXQ7CgogICAgaWYgKHJldCkgewogICAgICAgICAgICAuLi4KICAgIH0KClNv
IHRoZSBmaXJzdCBvcHRpb24gbWVhbnMgdGhlIGZpbmFsIGNoYW5nZSBpcyBzbWFsbGVyLCBidXQg
aXQgbG9va3MgbGVzcwpuaWNlIHRoYW4gdGhlIHNlY29uZCBvcHRpb24gKElNSE8pLgpCdXQgdGhl
IHNlY29uZCBvcHRpb24gbWVhbnMgbW9yZSBjaHVybi4KCj4gPiBTbyB0aGVyZSBhcmUgdGhyZWUg
cmVhc29uczogYmVjYXVzZSB0aGUgYWJzZW5jZSBvZiBhbiBvcHRpb25hbCBJUlEKPiA+IGlzIG5v
dCBhbiBlcnJvciwgYW5kIHRodXMgdGhhdCBzaG91bGQgbm90IGNhdXNlIChhKSBhbiBlcnJvciBj
b2RlCj4gPiB0byBiZSByZXR1cm5lZCwgYW5kIChiKSBhbiBlcnJvciBtZXNzYWdlIHRvIGJlIHBy
aW50ZWQsIGFuZCAoYykKPiA+IGJlY2F1c2UgaXQgY2FuIHNpbXBsaWZ5IHRoZSBsb2dpYyBpbiBk
ZXZpY2UgZHJpdmVycy4KPgo+IEkgZG9uJ3QgYWdyZWUgdG8gKGEpLiBJZiB0aGUgdmFsdWUgc2ln
bmFsaW5nIG5vdC1mb3VuZCBpcyAtRU5YSU8gb3IgMAo+IChvciAtRU5PREVWKSBkb2Vzbid0IG1h
dHRlciBtdWNoLiBJIHdvdWxkbid0IGRldmlhdGUgZnJvbSB0aGUgcmV0dXJuCj4gY29kZSBzZW1h
bnRpY3Mgb2YgcGxhdGZvcm1fZ2V0X2lycSgpIGp1c3QgZm9yIGhhdmluZyB0byBjaGVjayBhZ2Fp
bnN0IDAKPiBpbnN0ZWFkIG9mIC1FTlhJTy4gWmVybyBpcyB0aGVuIGp1c3QgYW5vdGhlciBtYWdp
YyB2YWx1ZS4KClplcm8gaXMgYSBuYXR1cmFsIG1hZ2ljIHZhbHVlIChhbHNvIGZvciBwb2ludGVy
cykuCkVycm9ycyBhcmUgYWx3YXlzIG5lZ2F0aXZlLgpQb3NpdGl2ZSB2YWx1ZXMgYXJlIGNvb2tp
ZXMgKG9yIHBvaW50ZXJzKSBhc3NvY2lhdGVkIHdpdGggc3VjY2Vzcy4KCj4gKGMpIHN0aWxsIGhh
cyB0byBiZSBwcm92ZW4sIHNlZSBhYm92ZS4KPgo+ID4gQ29tbWl0IDg5NzNlYTQ3OTAxYzgxYTEg
KCJkcml2ZXIgY29yZTogcGxhdGZvcm06IEludHJvZHVjZQo+ID4gcGxhdGZvcm1fZ2V0X2lycV9v
cHRpb25hbCgpIikgZml4ZWQgKGIpLCBidXQgZGlkbid0IGFkZHJlc3MgKGEpIGFuZAo+ID4gKGMp
Lgo+Cj4gWWVzLCBpdCBmaXhlZCAoYikgYW5kIHBpY2tlZCBhIGJhZCBuYW1lIGZvciB0aGF0LgoK
R3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0KR2Vl
cnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBn
ZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2hu
aWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5n
IHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtl
IHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBt
aS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vm
b3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3Bl
bmlwbWktZGV2ZWxvcGVyCg==
