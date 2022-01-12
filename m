Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B39648DB11
	for <lists+openipmi-developer@lfdr.de>; Thu, 13 Jan 2022 16:53:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n82PL-0002QS-2V; Thu, 13 Jan 2022 15:52:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n7ZCT-0005qA-R6
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 08:41:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=phWLHSZjGguJkLwzqhKqiJsmBiGXyQV/Ve2Tok5pS7g=; b=ek6huyoGgFAyUsv92zDoC+rpz3
 wCRXzJlGDR8RP0tuzK9PNNF2ehLI8qkkFhXFzozeBnRr2cWH7ZUg//1BQQbuRr1G3LplxqIZwoFpC
 GqgWIqUWaP+QvrOKoX4IrvQzyUKF4MHQjw2BgtEnMtcQNNEF22OnWZUW/hqfm37b2PHo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=phWLHSZjGguJkLwzqhKqiJsmBiGXyQV/Ve2Tok5pS7g=; b=ao+04kG3GknUoc0eL1xb8F2iGc
 hZwBom3B98MfrlJ7cUQH6C8FARt40fKgDZG1HrBKiLroWPvT4ehAh8Qrf+z3C2SgDmZOARmO2QrPT
 3WKLQ/VkbrQJbqVfKo9ZLuXkOG26scqV78GAN+94O5k/kxq4FLzSU3g4m2cvmbnXGqj4=;
Received: from mail-qk1-f181.google.com ([209.85.222.181])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n7ZCM-0001eC-A3
 for openipmi-developer@lists.sourceforge.net; Wed, 12 Jan 2022 08:41:38 +0000
Received: by mail-qk1-f181.google.com with SMTP id 69so1731284qkd.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Jan 2022 00:41:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=phWLHSZjGguJkLwzqhKqiJsmBiGXyQV/Ve2Tok5pS7g=;
 b=rzOE2p0rbbyFiQ2inY84l2FG7us7+7h2r/Kltebw3qF4Rh/JWwOF66tcZWCvIJfCJi
 Vnwf6wYwXSArHGwXtDdncbiYtsEGpgwLT6YFlxg0CHPwe2UBHO9dAke5ASUZo4U4KzFu
 6hsrv4L1oW55tbJGc0ApcC35Z0F6qYRhJpyQR0vn/iMsfvY0TFfh5QbW0Nv6HhUS9iJ1
 8JdzKEKKpYGiWpASJIuaTyNKJYcK6EZ1+rZ1k0lU00strDdZPsq1Gc5V4R7TMW5s+Aks
 o/b6anQIQzeKul9dlQ0aUWqeCYF8j0lcnUUI7Bxwl/8jRExP3Dv/IHJmETLDBRqujjI1
 JLHQ==
X-Gm-Message-State: AOAM530bAQk1lXXr7uxzGV61H7DY5Qm7Ib4BlRM283GM34vDFVr+ONPi
 F526dYK/0kY/bOjKUgDF968XbxotGBjOarQV
X-Google-Smtp-Source: ABdhPJwp2D0kTsIhmQU/yQE/jFypPYidi0w1Kk2RyEpUAiOlnXej1i+R1Ax4s0BUaRS1iO9cxQq3gA==
X-Received: by 2002:a37:db12:: with SMTP id e18mr5820790qki.14.1641976892453; 
 Wed, 12 Jan 2022 00:41:32 -0800 (PST)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com.
 [209.85.219.176])
 by smtp.gmail.com with ESMTPSA id l15sm8754361qkp.16.2022.01.12.00.41.32
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 12 Jan 2022 00:41:32 -0800 (PST)
Received: by mail-yb1-f176.google.com with SMTP id m6so4282975ybc.9
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 12 Jan 2022 00:41:32 -0800 (PST)
X-Received: by 2002:ab0:2118:: with SMTP id d24mr3735076ual.78.1641976440167; 
 Wed, 12 Jan 2022 00:34:00 -0800 (PST)
MIME-Version: 1.0
References: <20220110195449.12448-1-s.shtylyov@omp.ru>
 <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de> <YdyilpjC6rtz6toJ@lunn.ch>
In-Reply-To: <YdyilpjC6rtz6toJ@lunn.ch>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 12 Jan 2022 09:33:48 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
Message-ID: <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
To: Andrew Lunn <andrew@lunn.ch>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Andrew, On Mon, Jan 10, 2022 at 10:20 PM Andrew Lunn <andrew@lunn.ch>
    wrote: > On Mon, Jan 10, 2022 at 09:10:14PM +0100, Uwe Kleine-König wrote:
    > > On Mon, Jan 10, 2022 at 10:54:48PM +0300, Sergey Shtylyov [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.181 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.181 listed in wl.mailspike.net]
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
X-Headers-End: 1n7ZCM-0001eC-A3
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 kvm@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-iio@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Amit Kucheria <amitk@kernel.org>,
 ALSA Development Mailing List <alsa-devel@alsa-project.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>, linux-mtd@lists.infradead.org,
 linux-i2c@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-phy@lists.infradead.org, Jiri Slaby <jirislaby@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>, Kamal Dasu <kdasu.kdev@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Tony Luck <tony.luck@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-serial@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Jakub Kicinski <kuba@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, platform-driver-x86@vger.kernel.org,
 linux-pwm@vger.kernel.org, Saravanan Sekar <sravanhome@gmail.com>,
 Corey Minyard <minyard@acm.org>, linux-pm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, linux-gpio@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>, Mark Brown <broonie@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Eric Auger <eric.auger@redhat.com>,
 Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, linux-mmc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 netdev@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

SGkgQW5kcmV3LAoKT24gTW9uLCBKYW4gMTAsIDIwMjIgYXQgMTA6MjAgUE0gQW5kcmV3IEx1bm4g
PGFuZHJld0BsdW5uLmNoPiB3cm90ZToKPiBPbiBNb24sIEphbiAxMCwgMjAyMiBhdCAwOToxMDox
NFBNICswMTAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+IE9uIE1vbiwgSmFuIDEwLCAy
MDIyIGF0IDEwOjU0OjQ4UE0gKzAzMDAsIFNlcmdleSBTaHR5bHlvdiB3cm90ZToKPiA+ID4gVGhp
cyBwYXRjaCBpcyBiYXNlZCBvbiB0aGUgZm9ybWVyIEFuZHkgU2hldmNoZW5rbydzIHBhdGNoOgo+
ID4gPgo+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjEwMzMxMTQ0NTI2LjE5
NDM5LTEtYW5kcml5LnNoZXZjaGVua29AbGludXguaW50ZWwuY29tLwo+ID4gPgo+ID4gPiBDdXJy
ZW50bHkgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHJldHVybnMgYW4gZXJyb3IgY29kZSBl
dmVuIGlmIElSUQo+ID4gPiByZXNvdXJjZSBzaW1wbHkgaGFzIG5vdCBiZWVuIGZvdW5kLiBJdCBw
cmV2ZW50cyB0aGUgY2FsbGVycyBmcm9tIGJlaW5nCj4gPiA+IGVycm9yIGNvZGUgYWdub3N0aWMg
aW4gdGhlaXIgZXJyb3IgaGFuZGxpbmc6Cj4gPiA+Cj4gPiA+ICAgICByZXQgPSBwbGF0Zm9ybV9n
ZXRfaXJxX29wdGlvbmFsKC4uLik7Cj4gPiA+ICAgICBpZiAocmV0IDwgMCAmJiByZXQgIT0gLUVO
WElPKQo+ID4gPiAgICAgICAgICAgICByZXR1cm4gcmV0OyAvLyByZXNwZWN0IGRlZmVycmVkIHBy
b2JlCj4gPiA+ICAgICBpZiAocmV0ID4gMCkKPiA+ID4gICAgICAgICAgICAgLi4ud2UgZ2V0IGFu
IElSUS4uLgo+ID4gPgo+ID4gPiBBbGwgb3RoZXIgKl9vcHRpb25hbCgpIEFQSXMgc2VlbSB0byBy
ZXR1cm4gMCBvciBOVUxMIGluIGNhc2UgYW4gb3B0aW9uYWwKPiA+ID4gcmVzb3VyY2UgaXMgbm90
IGF2YWlsYWJsZS4gTGV0J3MgZm9sbG93IHRoaXMgZ29vZCBleGFtcGxlLCBzbyB0aGF0IHRoZQo+
ID4gPiBjYWxsZXJzIHdvdWxkIGxvb2sgbGlrZToKPiA+ID4KPiA+ID4gICAgIHJldCA9IHBsYXRm
b3JtX2dldF9pcnFfb3B0aW9uYWwoLi4uKTsKPiA+ID4gICAgIGlmIChyZXQgPCAwKQo+ID4gPiAg
ICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gPiAgICAgaWYgKHJldCA+IDApCj4gPiA+ICAgICAg
ICAgICAgIC4uLndlIGdldCBhbiBJUlEuLi4KPiA+Cj4gPiBUaGUgZGlmZmVyZW5jZSB0byBncGlv
ZF9nZXRfb3B0aW9uYWwgKGFuZCBtb3N0IG90aGVyICpfb3B0aW9uYWwpIGlzIHRoYXQKPiA+IHlv
dSBjYW4gdXNlIHRoZSBOVUxMIHZhbHVlIGFzIGlmIGl0IHdlcmUgYSB2YWxpZCBHUElPLgo+ID4K
PiA+IEFzIHRoaXMgaXNuJ3QgZ2l2ZW4gd2l0aCBmb3IgaXJxcywgSSBkb24ndCB0aGluayBjaGFu
Z2luZyB0aGUgcmV0dXJuCj4gPiB2YWx1ZSBoYXMgbXVjaCBzZW5zZS4KPgo+IFdlIGFjdHVhbGx5
IHdhbnQgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIHRvIGxvb2sgZGlmZmVyZW50IHRvIGFs
bAo+IHRoZSBvdGhlciBfb3B0aW9uYWwoKSBtZXRob2RzIGJlY2F1c2UgaXQgaXMgbm90IGVxdWl2
YWxlbnQuIElmIGl0Cj4gbG9va3MgdGhlIHNhbWUsIGRldmVsb3BlcnMgd2lsbCBhc3N1bWUgaXQg
aXMgdGhlIHNhbWUsIGFuZCBnZXQKPiB0aGVtc2VsdmVzIGludG8gdHJvdWJsZS4KCkRldmVsb3Bl
cnMgYWxyZWFkeSBhc3N1bWUgaXQgaXMgdGhlIHNhbWUsIGFuZCB0aHVzIGZvcmdldCB0aGV5IGhh
dmUKdG8gY2hlY2sgYWdhaW5zdCAtRU5YSU8gaW5zdGVhZCBvZiB6ZXJvLgoKR3J7b2V0amUsZWV0
aW5nfXMsCgogICAgICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0KR2VlcnQgVXl0dGVyaG9l
dmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1t
NjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUs
IEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxp
c3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZlbG9wZXIg
bWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWktZGV2ZWxv
cGVyCg==
