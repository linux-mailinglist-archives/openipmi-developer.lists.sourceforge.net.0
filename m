Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B3948E9DA
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 13:30:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8Lif-0002VW-NV; Fri, 14 Jan 2022 12:30:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n8J3a-0003xo-Kb
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 09:39:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XIsXuJfmE8JES6Mbtb18c2n3rWZVUZhPWhasZQeRi6Q=; b=hZFpB0sFV2XPg0/bo95f0pkgko
 6m9TxyAFfQcMf5vOFzVYJagGDsvwjz77VbnN5OP9ySC0cP5uNpTLHh0HPWGpBu1jANxQM9zcWH16J
 yss1+JslBpzr46w+WBSdWAIkV0/TEwzaj6zsdJjHkxcAjTVRTJbHWkvo22t94HJRAang=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=XIsXuJfmE8JES6Mbtb18c2n3rWZVUZhPWhasZQeRi6Q=; b=SkUnDuDGGa7qbPqz9dNM2SHB0e
 G44mjooXSFysC992Kjw+dcLnAQKfdBmJJVgEbx3Vz0efonhDN74gMIJ/LmtVfrofldcN4YJtkWY0i
 ePFdYE899IrzgvQ6W3TT/hHJRCDWzzmVvsSwrl3sSzQ6k6LLHmLpIh5CZgocejFD+lIk=;
Received: from mail-pl1-f171.google.com ([209.85.214.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n8J3Z-00FQZM-HE
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 09:39:39 +0000
Received: by mail-pl1-f171.google.com with SMTP id c6so4377758plh.6
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jan 2022 01:39:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XIsXuJfmE8JES6Mbtb18c2n3rWZVUZhPWhasZQeRi6Q=;
 b=OndhcQyMKltkrpbCuvK+Q0+oXweIVmOGlED8yUxoWSf0EcxSbZ9tRRFSImv+7nobbA
 XnZWWrWedoR+d3jmHtHLlbj4TvlNWC6oD8TL2jj0SZYd+CrLw3RgMYBhRsHxCSVjxuop
 3uD2Sx5udlseqBNUrTTQe9fQpDN6w33mmAwqUfDd9QMppj1BtGGlR5/KpMouS1PFRgvq
 HO/P2pJO4j8OfHpX4soxghEOyVQ64CYsCQgdndTxzLHbgZczDqUoBwqIqUSn+f6pgqU8
 4CXswT1I89ZSuL0O5M6voGILOfwCQLnUh4oO03diiiTKLMzsYaQ4tzogjaVfk1DaaIbQ
 Hbig==
X-Gm-Message-State: AOAM531MY18Ud8AlVoWvYp8ukN1qhXKNIytXOda34io7LbAtKrR6lj0B
 gr3ip60vdzHmjY+piwKo3j0QbP0oDyPGvDTg
X-Google-Smtp-Source: ABdhPJwbiCl/dhdEEPmMGWcVnJCGWc2R+iOOVCmIYLNb+Zytq/1ch8s58Uq2tUAS4BA2IzyjGrP2TA==
X-Received: by 2002:a17:90a:df11:: with SMTP id
 gp17mr9760239pjb.174.1642153171742; 
 Fri, 14 Jan 2022 01:39:31 -0800 (PST)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com.
 [209.85.216.48])
 by smtp.gmail.com with ESMTPSA id k19sm5614545pfu.178.2022.01.14.01.39.30
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 01:39:31 -0800 (PST)
Received: by mail-pj1-f48.google.com with SMTP id
 ie23-20020a17090b401700b001b38a5318easo13631892pjb.2
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jan 2022 01:39:30 -0800 (PST)
X-Received: by 2002:a05:6102:3581:: with SMTP id
 h1mr3716211vsu.5.1642153159149; 
 Fri, 14 Jan 2022 01:39:19 -0800 (PST)
MIME-Version: 1.0
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de> <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
In-Reply-To: <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 14 Jan 2022 10:39:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVcMNMYf82-rz8_057BGwYWyPyhjAh3e9ynrv82GMiHvg@mail.gmail.com>
Message-ID: <CAMuHMdVcMNMYf82-rz8_057BGwYWyPyhjAh3e9ynrv82GMiHvg@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Fri, Jan 14, 2022 at 10:26 AM Uwe Kleine-König
    <u.kleine-koenig@pengutronix.de> wrote: > On Thu, Jan 13, 2022 at 11:35:34PM
    +0300, Sergey Shtylyov wrote: > > On 1/13/22 12:45 AM, Mark Brown wrote:
   [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.214.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.171 listed in list.dnswl.org]
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
X-Headers-End: 1n8J3Z-00FQZM-HE
X-Mailman-Approved-At: Fri, 14 Jan 2022 12:30:10 +0000
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
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Tony Luck <tony.luck@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKT24gRnJpLCBKYW4gMTQsIDIwMjIgYXQgMTA6MjYgQU0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gVGh1LCBKYW4g
MTMsIDIwMjIgYXQgMTE6MzU6MzRQTSArMDMwMCwgU2VyZ2V5IFNodHlseW92IHdyb3RlOgo+ID4g
T24gMS8xMy8yMiAxMjo0NSBBTSwgTWFyayBCcm93biB3cm90ZToKPiA+ID4+PiBUbyBtZSBpdCBz
b3VuZHMgbXVjaCBtb3JlIGxvZ2ljYWwgZm9yIHRoZSBkcml2ZXIgdG8gY2hlY2sgaWYgYW4KPiA+
ID4+PiBvcHRpb25hbCBpcnEgaXMgbm9uLXplcm8gKGF2YWlsYWJsZSkgb3IgemVybyAobm90IGF2
YWlsYWJsZSksIHRoYW4gdG8KPiA+ID4+PiBzcHJpbmtsZSBhcm91bmQgY2hlY2tzIGZvciAtRU5Y
SU8uIEluIGFkZGl0aW9uLCB5b3UgaGF2ZSB0byByZW1lbWJlcgo+ID4gPj4+IHRoYXQgdGhpcyBv
bmUgcmV0dXJucyAtRU5YSU8sIHdoaWxlIG90aGVyIEFQSXMgdXNlIC1FTk9FTlQgb3IgLUVOT1NZ
Uwo+ID4gPj4+IChvciBzb21lIG90aGVyIGVycm9yIGNvZGUpIHRvIGluZGljYXRlIGFic2VuY2Uu
IEkgdGhvdWdodCBub3QgaGF2aW5nCj4gPiA+Pj4gdG8gY2FyZSBhYm91dCB0aGUgYWN0dWFsIGVy
cm9yIGNvZGUgd2FzIHRoZSBtYWluIHJlYXNvbiBiZWhpbmQgdGhlCj4gPiA+Pj4gaW50cm9kdWN0
aW9uIG9mIHRoZSAqX29wdGlvbmFsKCkgQVBJcy4KPiA+ID4KPiA+ID4+IE5vLCB0aGUgbWFpbiBi
ZW5lZml0IG9mIGdwaW9kX2dldF9vcHRpb25hbCgpIChhbmQgY2xrX2dldF9vcHRpb25hbCgpKSBp
cwo+ID4gPj4gdGhhdCB5b3UgY2FuIGhhbmRsZSBhbiBhYnNlbnQgR1BJTyAob3IgY2xrKSBhcyBp
ZiBpdCB3ZXJlIGF2YWlsYWJsZS4KPiA+Cj4gPiAgICBIbSwgSSd2ZSBqdXN0IGxvb2tlZCBhdCB0
aGVzZSBhbmQgbXVzdCBub3RlIHRoYXQgdGhleSBtYXRjaCAxOjEgd2l0aAo+ID4gcGxhdGZvcm1f
Z2V0X2lycV9vcHRpb25hbCgpLiBVbmZvcnR1bmF0ZWx5LCB3ZSBjYW4ndCBob3dldmVyIGJlaGF2
ZSB0aGUKPiA+IHNhbWUgd2F5IGluIHJlcXVlc3RfaXJxKCkgLS0gYmVjYXVzZSBpdCBoYXMgdG8g
c3VwcG9ydCBJUlEwIGZvciB0aGUgc2FrZQo+ID4gb2YgaTgyNTMgZHJpdmVycyBpbiBhcmNoLy4u
Lgo+Cj4gTGV0IG1lIHJlZm9ybXVsYXRlIHlvdXIgc3RhdGVtZW50IHRvIHRoZSBJTUhPIGVxdWl2
YWxlbnQ6Cj4KPiAgICAgICAgIElmIHlvdSBzZXQgYXNpZGUgdGhlIGRpZmZlcmVuY2VzIGJldHdl
ZW4KPiAgICAgICAgIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSBhbmQgZ3Bpb2RfZ2V0X29w
dGlvbmFsKCksCj4gICAgICAgICBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgaXMgbGlrZSBn
cGlvZF9nZXRfb3B0aW9uYWwoKS4KPgo+IFRoZSBpbnRyb2R1Y3Rpb24gb2YgZ3Bpb2RfZ2V0X29w
dGlvbmFsKCkgbWFkZSBpdCBwb3NzaWJsZSB0byBzaW1wbGlmeQo+IHRoZSBmb2xsb3dpbmcgY29k
ZToKPgo+ICAgICAgICAgcmVzZXRfZ3BpbyA9IGdwaW9kX2dldCguLi4pCj4gICAgICAgICBpZiBJ
U19FUlIocmVzZXRfZ3Bpbyk6Cj4gICAgICAgICAgICAgICAgIGVycm9yID0gUFRSX0VSUihyZXNl
dF9ncGlvKQo+ICAgICAgICAgICAgICAgICBpZiBlcnJvciAhPSAtRU5ERVY6Cj4gICAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIGVycm9yCj4gICAgICAgICBlbHNlOgo+ICAgICAgICAgICAg
ICAgICBncGlvZF9zZXRfZGlyZWN0aW9uKHJlc2V0X2dwaW9kLCBJTkFDVElWRSkKPgo+IHRvCj4K
PiAgICAgICAgIHJlc2V0X2dwaW8gPSBncGlvZF9nZXRfb3B0aW9uYWwoLi4uLikKPiAgICAgICAg
IGlmIElTX0VSUihyZXNldF9ncGlvKToKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHJlc2V0X2dw
aW8KPiAgICAgICAgIGdwaW9kX3NldF9kaXJlY3Rpb24ocmVzZXRfZ3Bpb2QsIElOQUNUSVZFKQo+
Cj4gYW5kIEkgbmV2ZXIgbmVlZCB0byBhY3R1YWxseSBrbm93IGlmIHRoZSByZXNldF9ncGlvIGFj
dHVhbGx5IGV4aXN0cy4KPiBFaXRoZXIgdGhlIGxpbmUgaXMgcHV0IGludG8gaXRzIGluYWN0aXZl
IHN0YXRlLCBvciBpdCBkb2Vzbid0IGV4aXN0IGFuZAo+IHRoZW4gZ3Bpb2Rfc2V0X2RpcmVjdGlv
biBpcyBhIG5vb3AuIEZvciBhIHJlZ3VsYXRvciBvciBhIGNsayB0aGlzIHdvcmtzCj4gaW4gYSBz
aW1pbGFyIHdheS4KPgo+IEhvd2V2ZXIgZm9yIGFuIGludGVydXB0IHRoaXMgY2Fubm90IHdvcmsu
IFlvdSB3aWxsIGFsd2F5cyBoYXZlIHRvIGNoZWNrCj4gaWYgdGhlIGlycSBpcyBhY3R1YWxseSB0
aGVyZSBvciBub3QgYmVjYXVzZSBpZiBpdCdzIG5vdCB5b3UgY2Fubm90IGp1c3QKPiBpZ25vcmUg
dGhhdC4gU28gdGhlcmUgaXMgbm8gYmVuZWZpdCBvZiBhbiBvcHRpb25hbCBpcnEuCj4KPiBMZWF2
aW5nIGVycm9yIG1lc3NhZ2UgcmVwb3J0aW5nIGFzaWRlLCB0aGUgaW50cm9kdWN0aW9uIG9mCj4g
cGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIGFsbG93cyB0byBjaGFuZ2UKPgo+ICAgICAgICAg
aXJxID0gcGxhdGZvcm1fZ2V0X2lycSguLi4pOwo+ICAgICAgICAgaWYgKGlycSA8IDAgJiYgaXJx
ICE9IC1FTlhJTykgewo+ICAgICAgICAgICAgICAgICByZXR1cm4gaXJxOwo+ICAgICAgICAgfSBl
bHNlIGlmIChpcnEgPj0gMCkgewo+ICAgICAgICAgICAgICAgICAuLi4gc2V0dXAgaXJxIG9wZXJh
dGlvbiAuLi4KPiAgICAgICAgIH0gZWxzZSB7IC8qIGlycSA9PSAtRU5YSU8gKi8KPiAgICAgICAg
ICAgICAgICAgLi4uIHNldHVwIHBvbGxpbmcgLi4uCj4gICAgICAgICB9Cj4KPiB0bwo+Cj4gICAg
ICAgICBpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKC4uLik7Cj4gICAgICAgICBpZiAo
aXJxIDwgMCAmJiBpcnEgIT0gLUVOWElPKSB7Cj4gICAgICAgICAgICAgICAgIHJldHVybiBpcnE7
Cj4gICAgICAgICB9IGVsc2UgaWYgKGlycSA+PSAwKSB7Cj4gICAgICAgICAgICAgICAgIC4uLiBz
ZXR1cCBpcnEgb3BlcmF0aW9uIC4uLgo+ICAgICAgICAgfSBlbHNlIHsgLyogaXJxID09IC1FTlhJ
TyAqLwo+ICAgICAgICAgICAgICAgICAuLi4gc2V0dXAgcG9sbGluZyAuLi4KPiAgICAgICAgIH0K
Pgo+IHdoaWNoIGlzbid0IGEgd2luLiBXaGVuIGNoYW5naW5nIHRoZSByZXR1cm4gdmFsdWUgYXMg
eW91IHN1Z2dlc3QsIGl0IGNhbgo+IGJlIGNoYW5nZWQgaW5zdGVhZCB0bzoKPgo+ICAgICAgICAg
aXJxID0gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCguLi4pOwo+ICAgICAgICAgaWYgKGlycSA8
IDApIHsKPiAgICAgICAgICAgICAgICAgcmV0dXJuIGlycTsKPiAgICAgICAgIH0gZWxzZSBpZiAo
aXJxID4gMCkgewo+ICAgICAgICAgICAgICAgICAuLi4gc2V0dXAgaXJxIG9wZXJhdGlvbiAuLi4K
PiAgICAgICAgIH0gZWxzZSB7IC8qIGlycSA9PSAwICovCj4gICAgICAgICAgICAgICAgIC4uLiBz
ZXR1cCBwb2xsaW5nIC4uLgo+ICAgICAgICAgfQo+Cj4gd2hpY2ggaXMgYSB0YWQgbmljZXIuIElm
IHRoYXQgaXMgeW91ciBnb2FsIGhvd2V2ZXIgSSBhc2sgeW91IHRvIGFsc28KPiBjaGFuZ2UgdGhl
IHNlbWFudGljIG9mIHBsYXRmb3JtX2dldF9pcnEoKSB0byByZXR1cm4gMCBvbiAibm90IGZvdW5k
Ii4KClBsZWFzZSBkb24ndCBtYWtlIHRoYXQgY2hhbmdlLiBJZiBwbGF0Zm9ybV9nZXRfaXJxKCkg
d291bGQgcmV0dXJuIDAgb24KIm5vdCBmb3VuZCIsIGFsbCBleGlzdGluZyB1c2VycyBoYXZlIHRv
IGJlIGNoYW5nZWQgdG86CgogICAgICAgIGlycSA9IHBsYXRmb3JtX2dldF9pcnEoLi4uKTsKICAg
ICAgICBpZiAoaXJxIDwgMCkgewogICAgICAgICAgICAgICAgcmV0dXJuIGlycTsKICAgICAgICB9
IGVsc2UgaWYgKCFpcnEpIHsKICAgICAgICAgICAgICAgIHJldHVybiAtRU5PRU5UOwogICAgICAg
IH0gZWxzZSB7CiAgICAgICAgICAgICAgICAuLi4gc2V0dXAgaXJxIG9wZXJhdGlvbiAuLi4KICAg
ICAgICB9CgpJZiB0aGUgSVJRIGlzIG5vdCBvcHRpb25hbCwgdGhlcmUgc2hvdWxkIGJlIGFuIGVy
cm9yIGNvZGUgd2hlbiBpdCBpcwpub3QgcHJlc2VudC4gVGhpcyBrZWVwcyBlcnJvciBoYW5kbGlu
ZyBzaW1wbGUuCgpUaGUgX29wdGlvbmFsKCkgZGlmZmVyZW5jZSBsaWVzIGluIHRoZSB6ZXJvL05V
TEwgdnMuIGVycm9yIGNvZGUgaW4KY2FzZSBvZiBub3QgcHJlc2VudC4KCj4gTm90ZSB0aGUgd2lu
IGlzIGNvbnNpZGVyYWJseSBsZXNzIGNvbXBhcmVkIHRvIGdwaW9kX2dldF9vcHRpb25hbCB2cwo+
IGdwaW9kX2dldCBob3dldmVyLiBBbmQgdGhlbiBpdCBzdGlsbCBsYWNrcyB0aGUgc2VtYW50aWMg
b2YgYSBkdW1teSBpcnEKPiB3aGljaCBJTUhPIGZvcmZlaXRzIHRoZSByaWdodCB0byBjYWxsIGl0
IC4uLl9vcHRpb25hbCgpLgo+Cj4gTm93IEknbSB1bndpbGxpbmcgdG8gY29udGludWUgdGhlIGRp
c2N1c3Npb24gdW5sZXNzIHRoZXJlIHBvcHMgdXAgYQo+IHN1Z2dlc3Rpb24gdGhhdCByZXN1bHRz
IGluIGEgY29uc2lkZXJhYmxlIHBhcnQgKHNheSA+IDEwJSkgb2YgdGhlCj4gZHJpdmVycyB1c2lu
ZyBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsIG5vdCBoYXZpbmcgdG8gY2hlY2sgaWYgdGhlCj4g
cmV0dXJuIHZhbHVlIGNvcnJlc3BvbmRzIHRvICJub3QgZm91bmQiLgoKVXN1YWxseSBkcml2ZXJz
IGRvIGhhdmUgdG8gY2hlY2sgaWYgdGhlIGludGVycnVwdCB3YXMgcHJlc2VudCBvcgpub3QsIGJl
Y2F1c2UgdGhleSBtYXkgaGF2ZSB0byBjaGFuZ2UgdGhlIG9wZXJhdGlvbiBvZiB0aGUgZHJpdmVy
LApkZXBlbmRpbmcgb24gaW50ZXJydXB0LWJhc2VkIG9yIHRpbWVyL3BvbGxpbmctYmFzZWQgcHJv
Y2Vzc2luZy4KCkNsb2NrcywgcmVndWxhdG9ycywgYW5kIHJlc2V0cyBhcmUgZGlmZmVyZW50LCBh
cyB0aGVpciBhYnNlbmNlIGlzCnJlYWxseSBhIG5vLW9wLiAgVGhlIGFic2VuY2Ugb2YgYW4gaW50
ZXJydXB0IGlzIG5vdCBhIG5vLW9wIChleGNlcHQKZm9yIHRoZSBzZXBhcmF0ZSBpbnRlcnJ1cHRz
IHZzLiBhIHNpbmdsZSBtdXhlZCBpbnRlcnJ1cHQgY2FzZSkuCgpHcntvZXRqZSxlZXRpbmd9cywK
CiAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0CgotLQpHZWVydCBVeXR0ZXJob2V2ZW4gLS0g
VGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3Jn
CgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxs
IG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBq
dXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCk9wZW5pcG1pLWRldmVsb3BlciBtYWlsaW5n
IGxpc3QKT3BlbmlwbWktZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xp
c3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9vcGVuaXBtaS1kZXZlbG9wZXIK
