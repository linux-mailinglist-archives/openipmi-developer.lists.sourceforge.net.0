Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07D604909F6
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jan 2022 15:08:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9Sgb-0006Vb-3i; Mon, 17 Jan 2022 14:08:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n9NaW-0005TE-6j
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 08:42:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HSt6CNnm0GlM6Pd+PH2cbsXZ5sf+8uWh7XWO1e+2zQ0=; b=Q2eUfP1yex2Cyrhfk7kaPzngB1
 TQKXBBnI3JU1NLRne2EYDy8B8Xqkion8QG3UfrMdYHy0Gg1jZhot6jsd9Oxd68h6utRwIcG6GzS1s
 LAGRBed9fjQLaTbxtlplKiDBqaJ93yJ/ca+VU1p80hRYj4BYQUK5+SVuwsHC96b5nXvk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HSt6CNnm0GlM6Pd+PH2cbsXZ5sf+8uWh7XWO1e+2zQ0=; b=aEFdfnJc/3NQDDw3dlnheRsUSU
 CQsvBwaKgXIw0l7QZf6X9IwNl+moAtmmXRG601it90Qa1tuRFAscKmhg9v81WXEU6+4f9uf5xgFko
 zba+tC0T+mORxNiJ+nxdzG0cQeyKSGweC9zC7HaH5maHX88QkPyhKzczK6vHyFIK7QEM=;
Received: from mail-ua1-f51.google.com ([209.85.222.51])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9NaU-000awz-6A
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 08:42:03 +0000
Received: by mail-ua1-f51.google.com with SMTP id 2so4348229uax.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 00:42:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HSt6CNnm0GlM6Pd+PH2cbsXZ5sf+8uWh7XWO1e+2zQ0=;
 b=6/vcm89AxC5lGKiSjsm3VO7D6jcEJsQltLDxZ8n4n5S9mNadmvcgkv1f0+LjR7/08T
 g8TnF2dr3IcmTfPaJTThJO85U58iTYPbpdn8ECWYli+1n+p6L90NRHUTod1RQsl2oaZY
 Q49nIlw0MEq8f4DDexXkc/Sm5IKT4hmMPmb3glA2dYZaX4evEw2QLfBMGW/mFFlaWFrM
 uWAnFd9wRqv6Ab2l2hOP5y63rAM3s9s2xYwIdkLvMfcRjGN1WKhTL0hWEVitr3Xed+9S
 28DsbLlpqgtuGiHoujLqatwnHrpFjzKikexUIa3vJz6NkEFbgFKdSOXw7xMiCJyaiq8V
 S8Yw==
X-Gm-Message-State: AOAM530Wj/tLIkMVQPYfY0q/gpd1pf1iebqTAm5TFYGZTBv7ewjRxdDO
 7R8og5CyY7xwIeatbtJ4O4koXy7BU/mNZMqO
X-Google-Smtp-Source: ABdhPJzrfnovR2wkiaUZ2kH8P/X76E0G8dcN6giKsU1nlUPg10pqNeVBJYRCf9PxAtoSlRcQnloENw==
X-Received: by 2002:a9f:3802:: with SMTP id p2mr7476250uad.35.1642408916283;
 Mon, 17 Jan 2022 00:41:56 -0800 (PST)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com.
 [209.85.222.50])
 by smtp.gmail.com with ESMTPSA id k18sm853797vsq.25.2022.01.17.00.41.54
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 00:41:54 -0800 (PST)
Received: by mail-ua1-f50.google.com with SMTP id i10so7119034uab.8
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 00:41:54 -0800 (PST)
X-Received: by 2002:ab0:4d42:: with SMTP id k2mr5629977uag.78.1642408914153;
 Mon, 17 Jan 2022 00:41:54 -0800 (PST)
MIME-Version: 1.0
References: <20220110201014.mtajyrfcfznfhyqm@pengutronix.de>
 <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
In-Reply-To: <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Jan 2022 09:41:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
Message-ID: <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, Jan 15, 2022 at 9:22 PM Sergey Shtylyov <s.shtylyov@omp.ru>
    wrote: > On 1/14/22 11:22 PM, Uwe Kleine-König wrote: > > You have to understand
    that for clk (and regulator and gpiod) NULL is a > [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.51 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.51 listed in wl.mailspike.net]
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
X-Headers-End: 1n9NaU-000awz-6A
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
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
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
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gU2F0LCBKYW4gMTUsIDIwMjIgYXQgOToyMiBQTSBTZXJnZXkgU2h0eWx5b3YgPHMuc2h0eWx5
b3ZAb21wLnJ1PiB3cm90ZToKPiBPbiAxLzE0LzIyIDExOjIyIFBNLCBVd2UgS2xlaW5lLUvDtm5p
ZyB3cm90ZToKPiA+IFlvdSBoYXZlIHRvIHVuZGVyc3RhbmQgdGhhdCBmb3IgY2xrIChhbmQgcmVn
dWxhdG9yIGFuZCBncGlvZCkgTlVMTCBpcyBhCj4gPiB2YWxpZCBkZXNjcmlwdG9yIHRoYXQgY2Fu
IGFjdHVhbGx5IGJlIHVzZWQsIGl0IGp1c3QgaGFzIG5vIGVmZmVjdC4gU28KPiA+IHRoaXMgaXMg
YSBjb252ZW5pZW5jZSB2YWx1ZSBmb3IgdGhlIGNhc2UgIklmIHRoZSBjbGsvcmVndWxhdG9yL2dw
aW9kIGluCj4gPiBxdWVzdGlvbiBpc24ndCBhdmFpbGFibGUsIHRoZXJlIGlzIG5vdGhpbmcgdG8g
ZG8iLiBUaGlzIGlzIHdoYXQgbWFrZXMKPiA+IGNsa19nZXRfb3B0aW9uYWwoKSBhbmQgdGhlIG90
aGVycyByZWFsbHkgdXNlZnVsIGFuZCBqdXN0aWZpZXMgdGhlaXIKPiA+IGV4aXN0ZW5jZS4gVGhp
cyBkb2Vzbid0IGFwcGx5IHRvIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKS4KPgo+ICAgIEkg
ZG8gdW5kZXJzdGFuZCB0aGF0LiBIb3dldmVyLCBJUlFzIGFyZSBhIGRpZmZlcmVudCBiZWFzdCB3
aXRoIHRoZWlyCj4gb3duIGp1c3RpZmljYXRpb25zLi4uCgo+ID4gY2xrX2dldF9vcHRpb25hbCgp
IGlzIHNhbmUgYW5kIHNlbnNpYmxlIGZvciBjYXNlcyB3aGVyZSB0aGUgY2xrIG1pZ2h0IGJlCj4g
PiBhYnNlbnQgYW5kIGl0IGhlbHBzIHlvdSBiZWNhdXNlIHlvdSBkb24ndCBoYXZlIHRvIGRpZmZl
cmVudGlhdGUgYmV0d2Vlbgo+ID4gIm5vdCBmb3VuZCIgYW5kICJ0aGVyZSBpcyBhbiBhY3R1YWwg
cmVzb3VyY2UiLgo+ID4KPiA+IFRoZSByZWFzb24gZm9yIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9u
YWwoKSdzIGV4aXN0ZW5jZSBpcyBqdXN0IHRoYXQKPiA+IHBsYXRmb3JtX2dldF9pcnEoKSBlbWl0
cyBhbiBlcnJvciBtZXNzYWdlIHdoaWNoIGlzIHdyb25nIG9yIHN1Ym9wdGltYWwKPgo+ICAgIEkg
dGhpbmsgeW91IGFyZSB2ZXJ5IHdyb25nIGhlcmUuIFRoZSByZWFsIHJlYXNvbiBpcyB0byBzaW1w
bGlmeSB0aGUKPiBjYWxsZXJzLgoKSW5kZWVkLgoKRXZlbiBmb3IgY2xvY2tzLCB5b3UgY2Fubm90
IGFzc3VtZSB0aGF0IHlvdSBjYW4gYWx3YXlzIGJsaW5kbHkgdXNlCnRoZSByZXR1cm5lZCBkdW1t
eSAoYWN0dWFsbHkgYSBOVUxMIHBvaW50ZXIpIHRvIGNhbGwgaW50byB0aGUgY2xrCkFQSS4gIFdo
aWxlIHRoaXMgd29ya3MgZmluZSBmb3Igc2ltcGxlIHVzZSBjYXNlcywgd2hlcmUgeW91IGp1c3QK
d2FudCB0byBlbmFibGUvZGlzYWJsZSBhbiBvcHRpb25hbCBjbG9jayAoY2xrX3ByZXBhcmVfZW5h
YmxlKCkgYW5kCmNsa19kaXNhYmxlX3VucHJlcGFyZSgpKSwgaXQgZG9lcyBub3Qgd29yayBmb3Ig
bW9yZSBjb21wbGV4IHVzZSBjYXNlcy4KCkNvbnNpZGVyIGEgZGV2aWNlIHdpdGggbXVsdGlwbGUg
Y2xvY2sgaW5wdXRzLCBzb21lIG9mIHRoZW0gb3B0aW9uYWwsCndoZXJlIHRoZSBkZXZpY2UgZHJp
dmVyIGhhcyB0byBmaW5kLCBzZWxlY3QgYW5kIGNvbmZpZ3VyZSBhIHN1aXRhYmxlCmNsb2NrIHRv
IG9wZXJhdGUgYXQgYSBjZXJ0YWluIGNsb2NrIGZyZXF1ZW5jeS4gVGhlIGRyaXZlciBjYW4gY2Fs
bApjbGtfZ2V0X3JhdGUoTlVMTCkgZmluZSwgYnV0IHdpbGwgYWx3YXlzIHJlY2VpdmUgYSB6ZXJv
IHJhdGUsIHNvIGl0CmhhcyB0byBjaGVjayBmb3IgdGhpcyAocmVnYXJkbGVzcyBvZiB0aGlzIGJl
aW5nIGEgZHVtbXkgY2xvY2sgb3Igbm90LApiZWNhdXNlIHRoaXMgY291bGQgYmUgYW4gdW5wb3B1
bGF0ZWQgY2xvY2sgY3J5c3RhbCwgd2hpY2ggd291bGQgYmUKZGVzY3JpYmVkIGluIERUIGFzIGEg
KHByZXNlbnQpIGZpeGVkLXJhdGUgY2xvY2sgd2l0aCBjbG9jay1mcmVxdWVuY3kKPSA8MD4pLgpG
b3IgY29uZmlndXJpbmcgdGhlIGNsb2NrIHJhdGUsIHRoZSBkcml2ZXIgZG9lcyBuZWVkIHRvIGNo
ZWNrCmV4cGxpY2l0bHkgZm9yIHRoZSBwcmVzZW5jZSBvZiBhIGR1bW15IGNsb2NrLCBhcyBjbGtf
c2V0X3JhdGUoTlVMTCwKcmF0ZSkgcmV0dXJucyAwICgic3VjY2VzcyIpLCB3aGlsZSBvYnZpb3Vz
bHkgaXQgZGlkbid0IGRvIGFueXRoaW5nLAphbmQgdGh1cyBjb25maWd1cmluZyB0aGUgZGV2aWNl
IHRvIHVzZSB0aGF0IGNsb2NrIHdvdWxkIGNhdXNlIGJyZWFrYWdlLgoKWW91IGNhbiBjaGVjayBp
ZiB0aGUgY2xvY2sgaXMgYSByZWFsIGNsb2NrIG9yIGEgZHVtbXkgdXNpbmcKImlmIChjbGspIC4u
LiIuCkFuZCB5b3UnZCB1c2UgdGhlIHNhbWUgcGF0dGVybiB3aXRoIHBsYXRmb3JtX2lycV9nZXRf
b3B0aW9uYWwoKSBpZiBpdAp3b3VsZCByZXR1cm4gMCBpZiB0aGUgSVJRIHdhcyBub3QgZm91bmQ6
ICJpZiAoaXJxKSAuLi4iLgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAgICAgICAgICAgICAgICAg
ICAgICBHZWVydAoKLS0KR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxvcGVyCg==
