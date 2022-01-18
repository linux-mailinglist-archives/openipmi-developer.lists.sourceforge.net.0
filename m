Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED6E49266C
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oB9-0001os-O2; Tue, 18 Jan 2022 13:05:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n9jo7-0002D2-Kr
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 08:25:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wwyuk2lsKqIfL1r34uR4hiV5J4os/EyMOhjZZucVxAA=; b=ejPx0D3g74SE4cfHrEuljoWSgq
 oG5az0pYhZphfk+DGctWHrymGVt+JNpUry8yo9ejYFpySKLYMIWLqMWiBkPtvMPQCQcf46I2UUNIQ
 KSnh7QgTp8xhr6TuexJ0QW6URSCfml+aiN1qwc02lQ9jR+myPpLnhhwii6W604ZztSw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wwyuk2lsKqIfL1r34uR4hiV5J4os/EyMOhjZZucVxAA=; b=QBcruuXjvAX4CWKpQ987HiBvQ1
 MZMNFbfDxr8r3V7V0nJbO4JNe7cwVfRiXZi4HqeL4+XoX/AhDGJPh9A0l93GVDHiWTHe3MIO4zGLt
 wLIaeZd5VjhHBIG60nbhEFRP3VgdjUtJVcc1wHJm3jn8fLFb1CLggygQI2hhzlxlatBE=;
Received: from mail-ua1-f53.google.com ([209.85.222.53])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9jo1-0000uW-Dn
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 08:25:34 +0000
Received: by mail-ua1-f53.google.com with SMTP id f24so1175671uab.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jan 2022 00:25:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wwyuk2lsKqIfL1r34uR4hiV5J4os/EyMOhjZZucVxAA=;
 b=4vcdKuaQ9kogsO/902a3PMFaLoDaFgfqTJjUbDzvBs/aXtdc/qKSjxNoFWjuHrtX4T
 vVUcbc3lJTtY9/yOwO6CLwwQpsupp6kkmmCQGvNhlHMhTdXSvmo6dou+587k5HIYoeCJ
 6p3jqP03yy04onAsM79z5iRHEkNn2FALFdPckC8MDaydReY3dL34AIfyfE1LqYaD6FqN
 Ute0nYq7zXT0rLEdVrgm7NjyUZLAMCELhUDCG6klYSr+PLQxC+F9EMt4SJJD+8BPLfBB
 zcynq/TvfHF5JRAmxsmbLecUIaQbj4X/9tCpMcHjklkkZy/MfaGE5ajFBt9tnOfxGTM7
 JWsw==
X-Gm-Message-State: AOAM53348a2b8zCmMuuM10UFYpIAvABhu62lMzsnqEWag4veiXiS3Z8f
 XBV2akc2Gld4AwB8vAsQ3B23iq22AmeLtuGm
X-Google-Smtp-Source: ABdhPJyZvea4fVklL0w5c5uJhlMXm3G2jvLFrkgp7vy7kDO/6Cils91bQ4nAnGr16K8kIf7MrnitvA==
X-Received: by 2002:a67:cb0d:: with SMTP id b13mr8682688vsl.81.1642494323516; 
 Tue, 18 Jan 2022 00:25:23 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com.
 [209.85.222.50])
 by smtp.gmail.com with ESMTPSA id r4sm2027267vsk.3.2022.01.18.00.25.23
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jan 2022 00:25:23 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id m90so35160560uam.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jan 2022 00:25:23 -0800 (PST)
X-Received: by 2002:ab0:4d42:: with SMTP id k2mr7281422uag.78.1642494312957;
 Tue, 18 Jan 2022 00:25:12 -0800 (PST)
MIME-Version: 1.0
References: <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
 <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
 <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
In-Reply-To: <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Jan 2022 09:25:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
Message-ID: <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Mon, Jan 17, 2022 at 6:06 PM Uwe Kleine-König
   <u.kleine-koenig@pengutronix.de> wrote: > On Mon, Jan 17, 2022 at 02:08:19PM
    +0100, Geert Uytterhoeven wrote: > > On Mon, Jan 17, 2022 at 12:49 PM Uwe
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
X-Headers-End: 1n9jo1-0000uW-Dn
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev <netdev@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
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

SGkgVXdlLAoKT24gTW9uLCBKYW4gMTcsIDIwMjIgYXQgNjowNiBQTSBVd2UgS2xlaW5lLUvDtm5p
Zwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBNb24sIEphbiAx
NywgMjAyMiBhdCAwMjowODoxOVBNICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4g
PiBPbiBNb24sIEphbiAxNywgMjAyMiBhdCAxMjo0OSBQTSBVd2UgS2xlaW5lLUvDtm5pZwo+ID4g
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+ID4gVGhlIGxvZ2lj
IGluIGUuZy4gZHJpdmVycy90dHkvc2VyaWFsL3NoLXNjaS5jIGFuZAo+ID4gPiA+IGRyaXZlcnMv
c3BpL3NwaS1yc3BpLmMgY291bGQgYmUgc2ltcGxpZmllZCBhbmQgaW1wcm92ZWQgKGN1cnJlbnRs
eQo+ID4gPiA+IGl0IGRvZXNuJ3QgaGFuZGxlIGRlZmVycmVkIHByb2JlKSBpZiBwbGF0Zm9ybV9n
ZXRfaXJxX29wdGlvbmFsKCkKPiA+ID4gPiB3b3VsZCByZXR1cm4gMCBpbnN0ZWFkIG9mIC1FTlhJ
Ty4KCj4gPiA+IEFsc28gZm9yIHNwaS1yc3BpLmMgSSBkb24ndCBzZWUgaG93IHBsYXRmb3JtX2dl
dF9pcnFfYnluYW1lX29wdGlvbmFsKCkKPiA+ID4gcmV0dXJuaW5nIDAgaW5zdGVhZCBvZiAtRU5Y
SU8gd291bGQgaGVscC4gUGxlYXNlIHRhbGsgaW4gcGF0Y2hlcy4KClsuLi5dCgo+IFRoaXMgaXMg
bm90IGEgc2ltcGxpZmljYXRpb24sIGp1c3QgbG9va2luZyBhdCB0aGUgbGluZSBjb3VudCBhbmQg
dGhlCj4gYWRkZWQgZ290b3MuIFRoYXQncyBiZWNhdXNlIGl0IGFsc28gaW1wcm92ZXMgZXJyb3Ig
aGFuZGxpbmcgYW5kIHNvIHRoZQo+IGVmZmVjdCBpc24ndCBlYXNpbHkgc3BvdHRlZC4KClllcywg
aXQncyBsYXJnZXIgYmVjYXVzZSBpdCBhZGRzIGN1cnJlbnRseSBtaXNzaW5nIGVycm9yIGhhbmRs
aW5nLgoKPiBXaGF0IGFib3V0IHRoZSBmb2xsb3dpbmcgaWRlYSAoaW4gcHl0aG9uaWMgcHNldWRv
IGNvZGUgZm9yIHNpbXBsaWNpdHkpOgoKTm8gaWRlYSB3aGF0IHlvdSBnYWluIGJ5IHRocm93aW5n
IGluIGEgbGFuZ3VhZ2UgdGhhdCBpcyBpcnJlbGV2YW50CnRvIGtlcm5lbCBwcm9ncmFtbWluZyAo
d2h5IG5vIFJ1c3Q/IDstKQoKPiA+ID4gPiBTbyB0aGVyZSBhcmUgdGhyZWUgcmVhc29uczogYmVj
YXVzZSB0aGUgYWJzZW5jZSBvZiBhbiBvcHRpb25hbCBJUlEKPiA+ID4gPiBpcyBub3QgYW4gZXJy
b3IsIGFuZCB0aHVzIHRoYXQgc2hvdWxkIG5vdCBjYXVzZSAoYSkgYW4gZXJyb3IgY29kZQo+ID4g
PiA+IHRvIGJlIHJldHVybmVkLCBhbmQgKGIpIGFuIGVycm9yIG1lc3NhZ2UgdG8gYmUgcHJpbnRl
ZCwgYW5kIChjKQo+ID4gPiA+IGJlY2F1c2UgaXQgY2FuIHNpbXBsaWZ5IHRoZSBsb2dpYyBpbiBk
ZXZpY2UgZHJpdmVycy4KPiA+ID4KPiA+ID4gSSBkb24ndCBhZ3JlZSB0byAoYSkuIElmIHRoZSB2
YWx1ZSBzaWduYWxpbmcgbm90LWZvdW5kIGlzIC1FTlhJTyBvciAwCj4gPiA+IChvciAtRU5PREVW
KSBkb2Vzbid0IG1hdHRlciBtdWNoLiBJIHdvdWxkbid0IGRldmlhdGUgZnJvbSB0aGUgcmV0dXJu
Cj4gPiA+IGNvZGUgc2VtYW50aWNzIG9mIHBsYXRmb3JtX2dldF9pcnEoKSBqdXN0IGZvciBoYXZp
bmcgdG8gY2hlY2sgYWdhaW5zdCAwCj4gPiA+IGluc3RlYWQgb2YgLUVOWElPLiBaZXJvIGlzIHRo
ZW4ganVzdCBhbm90aGVyIG1hZ2ljIHZhbHVlLgo+ID4KPiA+IFplcm8gaXMgYSBuYXR1cmFsIG1h
Z2ljIHZhbHVlIChhbHNvIGZvciBwb2ludGVycykuCj4gPiBFcnJvcnMgYXJlIGFsd2F5cyBuZWdh
dGl2ZS4KPiA+IFBvc2l0aXZlIHZhbHVlcyBhcmUgY29va2llcyAob3IgcG9pbnRlcnMpIGFzc29j
aWF0ZWQgd2l0aCBzdWNjZXNzLgo+Cj4gWWVhaCwgdGhlIGlzc3VlIHdoZXJlIHdlIGRvbid0IGFn
cmVlIGlzIGlmICJub3QtZm91bmQiIGlzIHNwZWNpYWwgZW5vdWdoCj4gdG8gZGVzZXJ2ZSB0aGUg
bmF0dXJhbCBtYWdpYyB2YWx1ZS4gRm9yIG1lIC1FTlhJTyBpcyBtYWdpYyBlbm91Z2ggdG8KPiBo
YW5kbGUgdGhlIGFic2VuY2Ugb2YgYW4gaXJxIGxpbmUuIEkgY29uc2lkZXIgaXQgZXZlbiB0aGUg
YmV0dGVyIG1hZ2ljCj4gdmFsdWUuCgpJdCBkaWZmZXJzIGZyb20gb3RoZXIgc3Vic3lzdGVtcyAo
Y2xrLCBncGlvLCByZXNldCksIHdoaWNoIGRvIHJldHVybgp6ZXJvIG9uIG5vdCBmb3VuZC4KV2hh
dCdzIHRoZSBwb2ludCBpbiBoYXZpbmcgKl9vcHRpb25hbCgpIEFQSXMgaWYgdGhleSBqdXN0IHJl
dHVybiB0aGUKc2FtZSB2YWx1ZXMgYXMgdGhlIG5vbi1vcHRpb25hbCBvbmVzPwoKCkdye29ldGpl
LGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRl
cmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGlu
dXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVv
cGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3Vy
bmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0Lgog
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxv
cGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0
Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRl
dmVsb3Blcgo=
