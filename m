Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFB749266B
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oBA-0001pA-Cx; Tue, 18 Jan 2022 13:05:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n9kvz-0005ck-Mf
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:37:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=94RJUajJnozufTpAr/gV3w0KHJpzlohNQuBpMs4wyR0=; b=JJFO+VVhUJGVJLo9aZDYbTNZzh
 XAjV0o8ZodlAi6v3hZz5B8cyWZvGKaE0oLHwdxsjd1bC2GkI6ZMKz3H6Ob2+M+fptcldkhbIA9zx8
 0dAt1Dz0KTGB7AUXGQnawIeHbgQ57rEPZfvg4qabVjFu63UiwjPGZvPdvq1NxZsUD+88=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=94RJUajJnozufTpAr/gV3w0KHJpzlohNQuBpMs4wyR0=; b=C+x7GyceusUMJChiOMRhebJxCj
 cUvdlgackxiWzBuuGZuiy1hQ+fP9E/UsocXLw2ydjvQyzPgKDMRhCDYjTKML0aw9qLuXV8KAUNhpo
 wIxMOVZwGDTZDrpmPOllL3+kYOcs3iriGAyDWusY560yWfUpxJXHm+AZVoyTHT3PcGXI=;
Received: from mail-ua1-f52.google.com ([209.85.222.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9kvw-0007Sc-Nv
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 09:37:46 +0000
Received: by mail-ua1-f52.google.com with SMTP id r15so35434716uao.3
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jan 2022 01:37:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=94RJUajJnozufTpAr/gV3w0KHJpzlohNQuBpMs4wyR0=;
 b=kgJuGXGL1RtsDMs717HUWazN2UZ7gekyZwQ9OrnJcjo8bd5Xn6OwJqXVFe63QdPcnb
 lc5vCxrQMwXTIbBYOfsJMZMWL9hKdefnckdevSCFxU7r8SN+GpZbmSxtFKOnFkjmMMaQ
 IsZwFfosesORgSsHolTXZct8gwtPBdTYSMVr8jh5Jr6I4JKRAnym4oND1O5++HgxK8u0
 KfC+1RILoo1CIRHERxMq3JImWjI+NV/zVAKDdYnRzRlw703uAcxI+FHhf0uEShVNmU7B
 YY+E0cFrzkGZ+ZodxmyyCP4JssOu7PcSoct5pDbf/BWgoOKcZV6izlnRnJVyv0jQCNbJ
 i8hg==
X-Gm-Message-State: AOAM532YgOWbgiKkjwTgXsvo3aqSJVwTuu3tUkWCrj3rjZV/IsM6Li/I
 XOCnnJvTpOh88Wo3UznbYXw9Wjf7KpvDFC5i
X-Google-Smtp-Source: ABdhPJyk3Ky/vkaSt9DM1m7I11y84l+OzzH9zTxbjd9kvdwPrVnHSF8HbF5gh2nLl2cfWPclZjbjQg==
X-Received: by 2002:a67:ea4a:: with SMTP id r10mr9304476vso.87.1642498658806; 
 Tue, 18 Jan 2022 01:37:38 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com.
 [209.85.222.46])
 by smtp.gmail.com with ESMTPSA id s18sm1727174vks.38.2022.01.18.01.37.37
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jan 2022 01:37:37 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id m15so35356732uap.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jan 2022 01:37:37 -0800 (PST)
X-Received: by 2002:a67:bc17:: with SMTP id t23mr5014894vsn.57.1642498657061; 
 Tue, 18 Jan 2022 01:37:37 -0800 (PST)
MIME-Version: 1.0
References: <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
 <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
 <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
 <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
 <20220118090913.pjumkq4zf4iqtlha@pengutronix.de>
In-Reply-To: <20220118090913.pjumkq4zf4iqtlha@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Jan 2022 10:37:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUW8+Y_=uszD+JOZO3Lpa9oDayk+GO+cg276i2f2T285w@mail.gmail.com>
Message-ID: <CAMuHMdUW8+Y_=uszD+JOZO3Lpa9oDayk+GO+cg276i2f2T285w@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Tue, Jan 18, 2022 at 10:09 AM Uwe Kleine-König
    <u.kleine-koenig@pengutronix.de> wrote: > On Tue, Jan 18, 2022 at 09:25:01AM
    +0100, Geert Uytterhoeven wrote: > > On Mon, Jan 17, 2022 at 6:06 PM Uwe
   [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.52 listed in wl.mailspike.net]
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
X-Headers-End: 1n9kvw-0007Sc-Nv
X-Mailman-Approved-At: Tue, 18 Jan 2022 13:05:37 +0000
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
 Kamal Dasu <kdasu.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
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
 netdev <netdev@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Vinod Koul <vkoul@kernel.org>,
 James Morse <james.morse@arm.com>, Zha Qipeng <qipeng.zha@intel.com>,
 Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKT24gVHVlLCBKYW4gMTgsIDIwMjIgYXQgMTA6MDkgQU0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gVHVlLCBKYW4g
MTgsIDIwMjIgYXQgMDk6MjU6MDFBTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
ID4gT24gTW9uLCBKYW4gMTcsIDIwMjIgYXQgNjowNiBQTSBVd2UgS2xlaW5lLUvDtm5pZwo+ID4g
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+IE9uIE1vbiwgSmFu
IDE3LCAyMDIyIGF0IDAyOjA4OjE5UE0gKzAxMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToK
PiA+ID4gPiBPbiBNb24sIEphbiAxNywgMjAyMiBhdCAxMjo0OSBQTSBVd2UgS2xlaW5lLUvDtm5p
Zwo+ID4gPiA+IDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+ID4gPiA+
ID4gPiBTbyB0aGVyZSBhcmUgdGhyZWUgcmVhc29uczogYmVjYXVzZSB0aGUgYWJzZW5jZSBvZiBh
biBvcHRpb25hbCBJUlEKPiA+ID4gPiA+ID4gaXMgbm90IGFuIGVycm9yLCBhbmQgdGh1cyB0aGF0
IHNob3VsZCBub3QgY2F1c2UgKGEpIGFuIGVycm9yIGNvZGUKPiA+ID4gPiA+ID4gdG8gYmUgcmV0
dXJuZWQsIGFuZCAoYikgYW4gZXJyb3IgbWVzc2FnZSB0byBiZSBwcmludGVkLCBhbmQgKGMpCj4g
PiA+ID4gPiA+IGJlY2F1c2UgaXQgY2FuIHNpbXBsaWZ5IHRoZSBsb2dpYyBpbiBkZXZpY2UgZHJp
dmVycy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBJIGRvbid0IGFncmVlIHRvIChhKS4gSWYgdGhlIHZh
bHVlIHNpZ25hbGluZyBub3QtZm91bmQgaXMgLUVOWElPIG9yIDAKPiA+ID4gPiA+IChvciAtRU5P
REVWKSBkb2Vzbid0IG1hdHRlciBtdWNoLiBJIHdvdWxkbid0IGRldmlhdGUgZnJvbSB0aGUgcmV0
dXJuCj4gPiA+ID4gPiBjb2RlIHNlbWFudGljcyBvZiBwbGF0Zm9ybV9nZXRfaXJxKCkganVzdCBm
b3IgaGF2aW5nIHRvIGNoZWNrIGFnYWluc3QgMAo+ID4gPiA+ID4gaW5zdGVhZCBvZiAtRU5YSU8u
IFplcm8gaXMgdGhlbiBqdXN0IGFub3RoZXIgbWFnaWMgdmFsdWUuCj4gPiA+ID4KPiA+ID4gPiBa
ZXJvIGlzIGEgbmF0dXJhbCBtYWdpYyB2YWx1ZSAoYWxzbyBmb3IgcG9pbnRlcnMpLgo+ID4gPiA+
IEVycm9ycyBhcmUgYWx3YXlzIG5lZ2F0aXZlLgo+ID4gPiA+IFBvc2l0aXZlIHZhbHVlcyBhcmUg
Y29va2llcyAob3IgcG9pbnRlcnMpIGFzc29jaWF0ZWQgd2l0aCBzdWNjZXNzLgo+ID4gPgo+ID4g
PiBZZWFoLCB0aGUgaXNzdWUgd2hlcmUgd2UgZG9uJ3QgYWdyZWUgaXMgaWYgIm5vdC1mb3VuZCIg
aXMgc3BlY2lhbCBlbm91Z2gKPiA+ID4gdG8gZGVzZXJ2ZSB0aGUgbmF0dXJhbCBtYWdpYyB2YWx1
ZS4gRm9yIG1lIC1FTlhJTyBpcyBtYWdpYyBlbm91Z2ggdG8KPiA+ID4gaGFuZGxlIHRoZSBhYnNl
bmNlIG9mIGFuIGlycSBsaW5lLiBJIGNvbnNpZGVyIGl0IGV2ZW4gdGhlIGJldHRlciBtYWdpYwo+
ID4gPiB2YWx1ZS4KPiA+Cj4gPiBJdCBkaWZmZXJzIGZyb20gb3RoZXIgc3Vic3lzdGVtcyAoY2xr
LCBncGlvLCByZXNldCksIHdoaWNoIGRvIHJldHVybgo+ID4gemVybyBvbiBub3QgZm91bmQuCj4K
PiBJTUhPIGl0IGRvZXNuJ3QgbWF0dGVyIGF0IGFsbCB0aGF0IHRoZSByZXR1cm4gdmFsdWUgaXMg
emVybywgcmVsZXZhbnQgaXMKPiB0aGUgc2VtYW50aWMgb2YgdGhlIHJldHVybmVkIHZhbHVlLiBG
b3IgY2xrLCBncGlvLCByZXNldCBhbmQgcmVndWxhdG9yCj4gTlVMTCBpcyBhIHVzYWJsZSBkdW1t
eSwgZm9yIGlycXMgaXQncyBub3QuIFNvIHdoYXQgeW91IGRvIHdpdGggdGhlIHZhbHVlCj4gcmV0
dXJuZWQgYnkgcGxhdGZvcm1fZ2V0X2lycV93aGF0ZXZlcigpIGlzOiB5b3UgY29tcGFyZSBpdCB3
aXRoIHRoZQo+IChtYWdpYz8pIG5vdC1mb3VuZCB2YWx1ZSwgYW5kIGlmIGl0IG1hdGNoZXMsIHlv
dSBlbnRlciBhIHN1aXRhYmxlCj4gaWYtYmxvY2suCj4KPiBGb3IgdGhlIChjbGt8Z3Bpb2R8cmVn
dWxhdG9yKV9nZXRfb3B0aW9uYWwoKSB5b3UgZG9uJ3QgaGF2ZSB0byBjaGVjawo+IGFnYWluc3Qg
dGhlIG1hZ2ljIG5vdC1mb3VuZCB2YWx1ZSAoc28gbm8gaW1wbGVtZW50YXRpb24gZGV0YWlsIG1h
Z2ljCj4gbGVha3MgaW50byB0aGUgY2FsbGVyIGNvZGUpIGFuZCBqdXN0IHBhc3MgaXQgdG8gdGhl
IG5leHQgQVBJIGZ1bmN0aW9uLgo+IChBbmQgbXkgZXhwZWN0YXRpb24gd291bGQgYmUgdGhhdCBp
ZiB5b3UgY2hvc2UgdG8gcmVwcmVzZW50IG5vdC1mb3VuZCBieQo+ICh2b2lkICopNjYgaW5zdGVh
ZCBvZiBOVUxMLCB5b3Ugd29uJ3QgaGF2ZSB0byBhZGFwdCBhbnkgdXNlciwganVzdCB0aGUKPiBm
cmFtZXdvcmsgaW50ZXJuYWwgY2hlY2tzLiBUaGlzIGlzIGEgZ29vZCB0aGluZyEpCgpBaCwgdGhl
cmUgaXMgdGhlIHdyb25nIGFzc3VtcHRpb246IGRyaXZlcnMgc29tZXRpbWVzIGRvIG5lZWQgdG8g
a25vdwppZiB0aGUgcmVzb3VyY2Ugd2FzIGZvdW5kLCBhbmQgdGh1cyBkbyBuZWVkIHRvIGtub3cg
YWJvdXQgKHZvaWQgKik2NiwKLUVOT0RFViwgb3IgLUVOWElPLiAgSSBhbHJlYWR5IGdhdmUgZXhh
bXBsZXMgZm9yIElSUSBhbmQgY2xrIGJlZm9yZS4KSSBjYW4gaW1hZ2luZSB0aGVzZSBleGlzdCBm
b3IgZ3Bpb2QgYW5kIHJlZ3VsYXRvciwgdG9vLCBhcyBzb29uIGFzCnlvdSBnbyBiZXlvbmQgdGhl
IHRyaXZpYWwgImVuYWJsZSIgYW5kICJkaXNhYmxlIiB1c2UtY2FzZXMuCgpBbmQgMC9OVUxMIHZz
LiA+IDAgaXMgdGhlIG5hdHVyYWwgY2hlY2sgaGVyZTogbWlzc2luZywgYnV0IG5vdAphbiBlcnJv
ci4gIEV2ZW4gZm9yIElSUSB0aGlzIHdhcyBlbnZpc2lvbmVkIGJlZm9yZSwgd2hlbiBpdCB3YXMK
ZGVjaWRlZCB0aGF0IHZJUlEgemVybyBkb2VzIG5vdCBleGlzdC4KKEluY29uc2lzdGVudCkgRXJy
b3IgY29kZXMgYXJlIG5vdCwgYXMgbWlzc2luZyBvcHRpb25hbCByZXNvdXJjZXMKYXJlIG5vdCBl
cnJvciBjb25kaXRpb25zLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAg
ICAgICBHZWVydAoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
