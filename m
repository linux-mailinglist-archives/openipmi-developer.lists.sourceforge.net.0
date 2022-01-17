Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E317F4909F9
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Jan 2022 15:08:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9Sgb-0006Vh-5U; Mon, 17 Jan 2022 14:08:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n9PNA-00033y-Rc
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 10:36:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8wbyaDOKHzyncR/a8atHHiwf57S6QrlnXekhvOqZ5Zc=; b=GrQx6Ee9YgfG92gS/2A3d9pCKl
 uKg96JX6XQzp+9mvhOVP+2DMHvn8m/b89Zc0Op2MoMOmEakntgYuMviYJzoNZoprkUcv0EN526h3k
 qNDe7IM1mxUGhJ35XdG+TE+vqUJ+WExWNxKOwmPUujYQDE94l9uTiZrY8brXIs1NgC+o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8wbyaDOKHzyncR/a8atHHiwf57S6QrlnXekhvOqZ5Zc=; b=fHfCkCZFGWlLKsaium8/p5HuXL
 N1gC7CQkLL4euXZtZNAciYh9wlIoZXzDcoFeGZcyJYakTqVAsp4e3NEA7jaTONQfTq1Vt1Zpv1V+0
 XfKAlxQLTVyGd0UrmKA5grbYOV0jF/FvhzTO18S2NTSXpomq6kMV2WcuCscDqaUU1t9w=;
Received: from mail-ua1-f47.google.com ([209.85.222.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9PN7-000gUA-MG
 for openipmi-developer@lists.sourceforge.net; Mon, 17 Jan 2022 10:36:23 +0000
Received: by mail-ua1-f47.google.com with SMTP id m15so29543362uap.6
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 02:36:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=8wbyaDOKHzyncR/a8atHHiwf57S6QrlnXekhvOqZ5Zc=;
 b=eXpppdv/DBk+0TGmXnHlz+SOIHsfWCTIvMAQtVAV0o5g4FIZYlaKwXG0v01d1oLtru
 QfQ02pvoPep3G4EjVA7FIofoVusxh1eT9PoPzeTtFQ1AcvFEv9kn6oNKi3iZift5klDI
 +FpbVTu+X7WxMkPeGIG2yTfWZNCQ6Ssh01sIUTmIRc5a0CweU3PbrbV1s/sPwjXiM+5l
 RpJESEOD/pvxjf/bK4TRNP6vWVnBShjqJQ0WUsx0mVcdT01Pb11AWQbu9x6IpRVCN5jo
 nP2kT5G2uiRc6iQzaKAfcMDbf+U1LJJokYEszAc3JoKcSClcCcKc/wX6KqAVUgNhJkmx
 uEpQ==
X-Gm-Message-State: AOAM531SacxYfGaxA2Y5+rSS/ci/37aLQuTKb5daJMGwETx3RginyfT/
 8KhEcR8vsbV/Xs5SjexGsLHX6X6awSA7y7TP
X-Google-Smtp-Source: ABdhPJyVqU1epTd/ev0OlEuZzv6XDPxk0vXzdiyX7klyqxrF06G0CbwVaP8FlSh6GFcRMa1hnXzeXw==
X-Received: by 2002:a05:6102:c08:: with SMTP id x8mr6961726vss.3.1642415775682; 
 Mon, 17 Jan 2022 02:36:15 -0800 (PST)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com.
 [209.85.222.52])
 by smtp.gmail.com with ESMTPSA id e71sm3279075vke.56.2022.01.17.02.36.14
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Jan 2022 02:36:15 -0800 (PST)
Received: by mail-ua1-f52.google.com with SMTP id u6so29681047uaq.0
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 17 Jan 2022 02:36:14 -0800 (PST)
X-Received: by 2002:ab0:4d42:: with SMTP id k2mr5738849uag.78.1642415764003;
 Mon, 17 Jan 2022 02:36:04 -0800 (PST)
MIME-Version: 1.0
References: <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <29f0c65d-77f2-e5b2-f6cc-422add8a707d@omp.ru>
 <20220114092557.jrkfx7ihg26ekzci@pengutronix.de>
 <61b80939-357d-14f5-df99-b8d102a4e1a1@omp.ru>
 <20220114202226.ugzklxv4wzr6egwj@pengutronix.de>
 <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
In-Reply-To: <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 17 Jan 2022 11:35:52 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
Message-ID: <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Mon, Jan 17, 2022 at 10:24 AM Uwe Kleine-König
    <u.kleine-koenig@pengutronix.de> wrote: > On Mon, Jan 17, 2022 at 09:41:42AM
    +0100, Geert Uytterhoeven wrote: > > On Sat, Jan 15, 2022 at 9:22 PM Ser
   [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.47 listed in list.dnswl.org]
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
X-Headers-End: 1n9PN7-000gUA-MG
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
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 Jiri Slaby <jirislaby@kernel.org>, openipmi-developer@lists.sourceforge.net,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Tony Luck <tony.luck@intel.com>,
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
 Mark Gross <markgross@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Sebastian Reichel <sre@kernel.org>,
 Eric Auger <eric.auger@redhat.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, platform-driver-x86@vger.kernel.org,
 Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Hans de Goede <hdegoede@redhat.com>, netdev <netdev@vger.kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC List <linux-mmc@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-spi <linux-spi@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Richard Weinberger <richard@nod.at>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgVXdlLAoKT24gTW9uLCBKYW4gMTcsIDIwMjIgYXQgMTA6MjQgQU0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gTW9uLCBKYW4g
MTcsIDIwMjIgYXQgMDk6NDE6NDJBTSArMDEwMCwgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+
ID4gT24gU2F0LCBKYW4gMTUsIDIwMjIgYXQgOToyMiBQTSBTZXJnZXkgU2h0eWx5b3YgPHMuc2h0
eWx5b3ZAb21wLnJ1PiB3cm90ZToKPiA+ID4gT24gMS8xNC8yMiAxMToyMiBQTSwgVXdlIEtsZWlu
ZS1Lw7ZuaWcgd3JvdGU6Cj4gPiA+ID4gWW91IGhhdmUgdG8gdW5kZXJzdGFuZCB0aGF0IGZvciBj
bGsgKGFuZCByZWd1bGF0b3IgYW5kIGdwaW9kKSBOVUxMIGlzIGEKPiA+ID4gPiB2YWxpZCBkZXNj
cmlwdG9yIHRoYXQgY2FuIGFjdHVhbGx5IGJlIHVzZWQsIGl0IGp1c3QgaGFzIG5vIGVmZmVjdC4g
U28KPiA+ID4gPiB0aGlzIGlzIGEgY29udmVuaWVuY2UgdmFsdWUgZm9yIHRoZSBjYXNlICJJZiB0
aGUgY2xrL3JlZ3VsYXRvci9ncGlvZCBpbgo+ID4gPiA+IHF1ZXN0aW9uIGlzbid0IGF2YWlsYWJs
ZSwgdGhlcmUgaXMgbm90aGluZyB0byBkbyIuIFRoaXMgaXMgd2hhdCBtYWtlcwo+ID4gPiA+IGNs
a19nZXRfb3B0aW9uYWwoKSBhbmQgdGhlIG90aGVycyByZWFsbHkgdXNlZnVsIGFuZCBqdXN0aWZp
ZXMgdGhlaXIKPiA+ID4gPiBleGlzdGVuY2UuIFRoaXMgZG9lc24ndCBhcHBseSB0byBwbGF0Zm9y
bV9nZXRfaXJxX29wdGlvbmFsKCkuCj4gPiA+Cj4gPiA+ICAgIEkgZG8gdW5kZXJzdGFuZCB0aGF0
LiBIb3dldmVyLCBJUlFzIGFyZSBhIGRpZmZlcmVudCBiZWFzdCB3aXRoIHRoZWlyCj4gPiA+IG93
biBqdXN0aWZpY2F0aW9ucy4uLgo+ID4KPiA+ID4gPiBjbGtfZ2V0X29wdGlvbmFsKCkgaXMgc2Fu
ZSBhbmQgc2Vuc2libGUgZm9yIGNhc2VzIHdoZXJlIHRoZSBjbGsgbWlnaHQgYmUKPiA+ID4gPiBh
YnNlbnQgYW5kIGl0IGhlbHBzIHlvdSBiZWNhdXNlIHlvdSBkb24ndCBoYXZlIHRvIGRpZmZlcmVu
dGlhdGUgYmV0d2Vlbgo+ID4gPiA+ICJub3QgZm91bmQiIGFuZCAidGhlcmUgaXMgYW4gYWN0dWFs
IHJlc291cmNlIi4KPiA+ID4gPgo+ID4gPiA+IFRoZSByZWFzb24gZm9yIHBsYXRmb3JtX2dldF9p
cnFfb3B0aW9uYWwoKSdzIGV4aXN0ZW5jZSBpcyBqdXN0IHRoYXQKPiA+ID4gPiBwbGF0Zm9ybV9n
ZXRfaXJxKCkgZW1pdHMgYW4gZXJyb3IgbWVzc2FnZSB3aGljaCBpcyB3cm9uZyBvciBzdWJvcHRp
bWFsCj4gPiA+Cj4gPiA+ICAgIEkgdGhpbmsgeW91IGFyZSB2ZXJ5IHdyb25nIGhlcmUuIFRoZSBy
ZWFsIHJlYXNvbiBpcyB0byBzaW1wbGlmeSB0aGUKPiA+ID4gY2FsbGVycy4KPiA+Cj4gPiBJbmRl
ZWQuCj4KPiBUaGUgY29tbWl0IHRoYXQgaW50cm9kdWNlZCBwbGF0Zm9ybV9nZXRfaXJxX29wdGlv
bmFsKCkgc2FpZDoKPgo+ICAgICAgICAgSW50cm9kdWNlIGEgbmV3IHBsYXRmb3JtX2dldF9pcnFf
b3B0aW9uYWwoKSB0aGF0IHdvcmtzIG11Y2ggbGlrZQo+ICAgICAgICAgcGxhdGZvcm1fZ2V0X2ly
cSgpIGJ1dCBkb2VzIG5vdCBvdXRwdXQgYW4gZXJyb3Igb24gZmFpbHVyZSB0bwo+ICAgICAgICAg
ZmluZCB0aGUgaW50ZXJydXB0Lgo+Cj4gU28gdGhlIGF1dGhvciBvZiA4OTczZWE0NzkwMWM4MWEx
OTEyYmQwNWYxNTc3YmVkOWI1YjUyNTA2IGZhaWxlZCB0bwo+IG1lbnRpb24gdGhlIHJlYWwgcmVh
c29uPyBPciBsb29rIGF0Cj4gMzFhOGQ4ZmE4NGM1MWQzYWIwMGJmMDU5MTU4ZDVkZTYxNzhjZjg5
MDoKPgo+ICAgICAgICAgWy4uLl0gdXNlIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSB0byBn
ZXQgc2Vjb25kL3RoaXJkIElSUQo+ICAgICAgICAgd2hpY2ggYXJlIG9wdGlvbmFsIHRvIGF2b2lk
IGJlbG93IGVycm9yIG1lc3NhZ2UgZHVyaW5nIHByb2JlOgo+ICAgICAgICAgWy4uLl0KPgo+IExv
b2sgdGhyb3VnaCB0aGUgb3V0cHV0IG9mCj4KPiAgICAgICAgIGdpdCBsb2cgLVNwbGF0Zm9ybV9n
ZXRfaXJxX29wdGlvbmFsCj4KPiB0byBmaW5kIHNldmVyYWwgbW9yZSBvZiB0aGVzZS4KCkNvbW1p
dCA4OTczZWE0NzkwMWM4MWExICgiZHJpdmVyIGNvcmU6IHBsYXRmb3JtOiBJbnRyb2R1Y2UKcGxh
dGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIikgYW5kIHRoZSB2YXJpb3VzIGZpeHVwcyBmaXhlZCB0
aGUgdWdseQpwcmludGluZyBvZiBlcnJvciBtZXNzYWdlcyB0aGF0IHdlcmUgbm90IGFwcGxpY2Fi
bGUuCkluIGhpbmRzaWdodCwgcHJvYmFibHkgY29tbWl0IDc3MjNmNGM1ZWNkYjhkODMgKCJkcml2
ZXIgY29yZToKcGxhdGZvcm06IEFkZCBhbiBlcnJvciBtZXNzYWdlIHRvIHBsYXRmb3JtX2dldF9p
cnEqKCkiKSBzaG91bGQgaGF2ZQpiZWVuIHJldmVydGVkIGluc3RlYWQsIHVudGlsIGEgcGxhdGZv
cm1fZ2V0X2lycV9vcHRpb25hbCgpIHdpdGggcHJvcGVyCnNlbWFudGljcyB3YXMgaW50cm9kdWNl
ZC4gIEJ1dCBhcyB3ZSB3ZXJlIGFsbCBpbiBhIGh1cnJ5IHRvIGtpbGwKdGhlIG5vbi1hcHBsaWNh
YmxlIGVycm9yIG1lc3NhZ2UsIHdlIHdlbnQgZm9yIHRoZSBxdWljayBhbmQgZGlydHkgZml4LgoK
PiBBbHNvIEkgZmFpbCB0byBzZWUgaG93IGEgY2FsbGVyIG9mICh0b2RheSdzKSBwbGF0Zm9ybV9n
ZXRfaXJxX29wdGlvbmFsKCkKPiBpcyBzaW1wbGVyIHRoYW4gYSBjYWxsZXIgb2YgcGxhdGZvcm1f
Z2V0X2lycSgpIGdpdmVuIHRoYXQgdGhlcmUgaXMgbm8KPiBzZW1hbnRpYyBkaWZmZXJlbmNlIGJl
dHdlZW4gdGhlIHR3by4gUGxlYXNlIHNob3cgbWUgYSBzaW5nbGUKPiBjb252ZXJzaW9uIGZyb20g
cGxhdGZvcm1fZ2V0X2lycSB0byBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsIHRoYXQKPiB5aWVs
ZGVkIGEgc2ltcGxpZmljYXRpb24uCgpUaGF0J3MgZXhhY3RseSB3aHkgd2Ugd2FudCB0byBjaGFu
Z2UgdGhlIGxhdHRlciB0byByZXR1cm4gMCA7LSkKCj4gU28geW91IG5lZWQgc29tZSBtb3JlIGVm
Zm9ydCB0byBjb252aW5jZSBtZSBvZiB5b3VyIFBPVi4KPgo+ID4gRXZlbiBmb3IgY2xvY2tzLCB5
b3UgY2Fubm90IGFzc3VtZSB0aGF0IHlvdSBjYW4gYWx3YXlzIGJsaW5kbHkgdXNlCj4gPiB0aGUg
cmV0dXJuZWQgZHVtbXkgKGFjdHVhbGx5IGEgTlVMTCBwb2ludGVyKSB0byBjYWxsIGludG8gdGhl
IGNsawo+ID4gQVBJLiAgV2hpbGUgdGhpcyB3b3JrcyBmaW5lIGZvciBzaW1wbGUgdXNlIGNhc2Vz
LCB3aGVyZSB5b3UganVzdAo+ID4gd2FudCB0byBlbmFibGUvZGlzYWJsZSBhbiBvcHRpb25hbCBj
bG9jayAoY2xrX3ByZXBhcmVfZW5hYmxlKCkgYW5kCj4gPiBjbGtfZGlzYWJsZV91bnByZXBhcmUo
KSksIGl0IGRvZXMgbm90IHdvcmsgZm9yIG1vcmUgY29tcGxleCB1c2UgY2FzZXMuCj4KPiBBZ3Jl
ZWQuIEJ1dCBmb3IgY2xrcyBhbmQgZ3Bpb2RzIGFuZCByZWd1bGF0b3JzIHRoZSBzaW1wbGUgY2Fz
ZSBpcyBxdWl0ZQo+IHVzdWFsLiBGb3IgaXJxcyBpdCBpc24ndC4KCkl0IGlzIGZvciBkZXZpY2Vz
IHRoYXQgY2FuIGhhdmUgZWl0aGVyIHNlcGFyYXRlIGludGVycnVwdHMsIG9yIGEgc2luZ2xlCm11
bHRpcGxleGVkIGludGVycnVwdC4KClRoZSBsb2dpYyBpbiBlLmcuIGRyaXZlcnMvdHR5L3Nlcmlh
bC9zaC1zY2kuYyBhbmQKZHJpdmVycy9zcGkvc3BpLXJzcGkuYyBjb3VsZCBiZSBzaW1wbGlmaWVk
IGFuZCBpbXByb3ZlZCAoY3VycmVudGx5Cml0IGRvZXNuJ3QgaGFuZGxlIGRlZmVycmVkIHByb2Jl
KSBpZiBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkKd291bGQgcmV0dXJuIDAgaW5zdGVhZCBv
ZiAtRU5YSU8uCgo+IEFuZCBpZiB5b3UgY2Fubm90IGJsaW5kbHkgdXNlIHRoZSBkdW1teSwgdGhl
biB5b3UncmUgbm90IHRoZSB0YXJnZXR0ZWQKPiBjYWxsZXIgb2YgKl9nZXRfb3B0aW9uYWwoKSBh
bmQgc2hvdWxkIGJldHRlciB1c2UgKl9nZXQoKSBhbmQgaGFuZGxlCj4gLUVOT0RFViBleHBsaWNp
dGx5LgoKTm8sIGJlY2F1c2UgdGhlIGphbml0b3JzIHRlbmQgdG8gY29uc29saWRhdGUgZXJyb3Ig
bWVzc2FnZSBoYW5kbGluZywKYnkgbW92aW5nIHRoZSBwcmludGluZyB1cCwgaW5zaWRlIHRoZSAq
X2dldCgpIG1ldGhvZHMuICBUaGF0J3MgZXhhY3RseQp3aGF0IGhhcHBlbmVkIGhlcmUuClNvIHRo
ZXJlIGFyZSB0aHJlZSByZWFzb25zOiBiZWNhdXNlIHRoZSBhYnNlbmNlIG9mIGFuIG9wdGlvbmFs
IElSUQppcyBub3QgYW4gZXJyb3IsIGFuZCB0aHVzIHRoYXQgc2hvdWxkIG5vdCBjYXVzZSAoYSkg
YW4gZXJyb3IgY29kZQp0byBiZSByZXR1cm5lZCwgYW5kIChiKSBhbiBlcnJvciBtZXNzYWdlIHRv
IGJlIHByaW50ZWQsIGFuZCAoYykKYmVjYXVzZSBpdCBjYW4gc2ltcGxpZnkgdGhlIGxvZ2ljIGlu
IGRldmljZSBkcml2ZXJzLgoKQ29tbWl0IDg5NzNlYTQ3OTAxYzgxYTEgKCJkcml2ZXIgY29yZTog
cGxhdGZvcm06IEludHJvZHVjZQpwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkiKSBmaXhlZCAo
YiksIGJ1dCBkaWRuJ3QgYWRkcmVzcyAoYSkgYW5kCihjKS4KCkdye29ldGplLGVldGluZ31zLAoK
ICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBU
aGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcK
CkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwg
bXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1
c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcg
bGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
