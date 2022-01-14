Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD5848F030
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 19:55:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8RjW-0006I1-8Z; Fri, 14 Jan 2022 18:55:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <s.shtylyov@omp.ru>) id 1n8Qo5-0004E5-KU
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 17:56:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zY3hm8Lvjkhit670qrcVFfVsXaejWa0lYkXt5tUde9w=; b=h4i3P0c3dgSasA7Bgaj/d1fvcY
 ROCYDucrbZ0uUAup7C1l7G7Sx8yT+OkaerBwsUc0LNPtMxvhDzUL01jJeKV9c8rcWeB49Vuety/Ha
 qK60tVzlsPOqe1GgDQqZTCq5k3N7UgF28JZ8SAQpP53HNqMUtgNKmb4HrSwuoEj8wtp8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zY3hm8Lvjkhit670qrcVFfVsXaejWa0lYkXt5tUde9w=; b=TfSNIGB9gt2FIRj5ls5QWXTxP9
 D7VByMZIz0rlqpO6CWv9gLS/1VdXNJOfvNbcHR37zfSbI3mVevIgIYSkARLjHHcEW9XTZlJAA12cg
 SE6Oi2hMHEqujWR/o+QxbG+bLc+YqMQNDNpoohh0rtQTpl7LZFu68z2TOj4xFnIz7fxw=;
Received: from mxout01.lancloud.ru ([45.84.86.81])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n8Qnq-0000Zc-8y
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 17:56:08 +0000
Received: from LanCloud
DKIM-Filter: OpenDKIM Filter v2.11.0 mxout01.lancloud.ru 07985205D68B
Received: from LanCloud
Received: from LanCloud
Received: from LanCloud
To: Florian Fainelli <f.fainelli@gmail.com>, =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?=
 <u.kleine-koenig@pengutronix.de>, Mark Brown <broonie@kernel.org>
References: <20220110195449.12448-2-s.shtylyov@omp.ru>
 <20220110201014.mtajyrfcfznfhyqm@pengutronix.de> <YdyilpjC6rtz6toJ@lunn.ch>
 <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <745c601f-c782-0904-f786-c9bfced8f11c@gmail.com>
From: Sergey Shtylyov <s.shtylyov@omp.ru>
Organization: Open Mobile Platform
Message-ID: <cae0b73e-46df-a491-4a8e-415205038c2c@omp.ru>
Date: Fri, 14 Jan 2022 20:55:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <745c601f-c782-0904-f786-c9bfced8f11c@gmail.com>
Content-Language: en-US
X-Originating-IP: [192.168.11.198]
X-ClientProxiedBy: LFEXT02.lancloud.ru (fd00:f066::142) To
 LFEX1907.lancloud.ru (fd00:f066::207)
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 1/14/22 12:42 AM,
 Florian Fainelli wrote: >> The subsystems
 regulator, clk and gpio have the concept of a dummy >> resource. For regulator,
 clk and gpio there is a semantic difference >> between the regular _get()
 function and the _get_option [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n8Qnq-0000Zc-8y
X-Mailman-Approved-At: Fri, 14 Jan 2022 18:55:27 +0000
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
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org, Linus
 Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>, ALSA
 Development Mailing List <alsa-devel@alsa-project.org>,
 Jaroslav Kysela <perex@perex.cz>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 MTD Maling List <linux-mtd@lists.infradead.org>,
 Linux I2C <linux-i2c@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-phy@lists.infradead.org,
 netdev@vger.kernel.org, linux-spi <linux-spi@vger.kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>, Khuong Dinh <khuong@os.amperecomputing.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, Lee Jones <lee.jones@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Geert
 Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 John Garry <john.garry@huawei.com>, Takashi Iwai <tiwai@suse.com>,
 Peter Korsgaard <peter@korsgaard.com>, William
 Breathitt Gray <vilhelm.gray@gmail.com>, Mark Gross <markgross@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav
 Petkov <bp@alien8.de>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 openipmi-developer@lists.sourceforge.net,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Benson Leung <bleung@chromium.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Richard Weinberger <richard@nod.at>,
 Mun Yew Tham <mun.yew.tham@intel.com>, Eric
 Auger <eric.auger@redhat.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Cornelia Huck <cohuck@redhat.com>, Linux MMC
 List <linux-mmc@vger.kernel.org>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Vinod Koul <vkoul@kernel.org>, James Morse <james.morse@arm.com>,
 Zha Qipeng <qipeng.zha@intel.com>, Sebastian Reichel <sre@kernel.org>,
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian
 Norris <computersforpeace@gmail.com>, "David S.
 Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

T24gMS8xNC8yMiAxMjo0MiBBTSwgRmxvcmlhbiBGYWluZWxsaSB3cm90ZToKCj4+IFRoZSBzdWJz
eXN0ZW1zIHJlZ3VsYXRvciwgY2xrIGFuZCBncGlvIGhhdmUgdGhlIGNvbmNlcHQgb2YgYSBkdW1t
eQo+PiByZXNvdXJjZS4gRm9yIHJlZ3VsYXRvciwgY2xrIGFuZCBncGlvIHRoZXJlIGlzIGEgc2Vt
YW50aWMgZGlmZmVyZW5jZQo+PiBiZXR3ZWVuIHRoZSByZWd1bGFyIF9nZXQoKSBmdW5jdGlvbiBh
bmQgdGhlIF9nZXRfb3B0aW9uYWwoKSB2YXJpYW50Lgo+PiAoT25lIG1pZ2h0IHJldHVybiB0aGUg
ZHVtbXkgcmVzb3VyY2UsIHRoZSBvdGhlciB3b24ndC4gVW5mb3J0dW5hdGVseQo+PiB3aGljaCBv
bmUgaW1wbGVtZW50cyB3aGljaCBpc24ndCB0aGUgc2FtZSBmb3IgdGhlc2UgdGhyZWUuKSBUaGUK
Pj4gZGlmZmVyZW5jZSBiZXR3ZWVuIHBsYXRmb3JtX2dldF9pcnEoKSBhbmQgcGxhdGZvcm1fZ2V0
X2lycV9vcHRpb25hbCgpIGlzCj4+IG9ubHkgdGhhdCB0aGUgZm9ybWVyIG1pZ2h0IGVtaXQgYW4g
ZXJyb3IgbWVzc2FnZSBhbmQgdGhlIGxhdGVyIHdvbid0Lgo+Pgo+PiBUbyBwcmV2ZW50IHBlb3Bs
ZSdzIGV4cGVjdGF0aW9ucyB0aGF0IHRoZXJlIGlzIGEgc2VtYW50aWMgZGlmZmVyZW5jZQo+PiBi
ZXR3ZWVuIHRoZXNlIHRvbywgcmVuYW1lIHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSB0bwo+
PiBwbGF0Zm9ybV9nZXRfaXJxX3NpbGVudCgpIHRvIG1ha2UgdGhlIGFjdHVhbCBkaWZmZXJlbmNl
IG1vcmUgb2J2aW91cy4KPj4KPj4gVGhlICNkZWZpbmUgZm9yIHRoZSBvbGQgbmFtZSBjYW4gYW5k
IHNob3VsZCBiZSByZW1vdmVkIG9uY2UgYWxsIHBhdGNoZXMKPj4gY3VycmVudGx5IGluIGZsdXgg
c3RpbGwgcmVseWluZyBvbiBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgYXJlCj4+IGZpeGVk
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmln
QHBlbmd1dHJvbml4LmRlPgpbLi4uXQo+Pj4+IEkgdGhpbmsgYXQgbGVhc3QgYykgaXMgZWFzeSB0
byByZXNvbHZlIGJlY2F1c2UKPj4+PiBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgaXNuJ3Qg
dGhhdCBvbGQgeWV0IGFuZCBtZWNoYW5pY2FsbHkKPj4+PiByZXBsYWNpbmcgaXQgYnkgcGxhdGZv
cm1fZ2V0X2lycV9zaWxlbnQoKSBzaG91bGQgYmUgZWFzeSBhbmQgc2FmZS4KPj4+PiBBbmQgdGhp
cyBpcyBvcnRob2dvbmFsIHRvIHRoZSBkaXNjdXNzaW9uIGlmIC1FTk9YSU8gaXMgYSBzZW5zaWJs
ZSByZXR1cm4KPj4+PiB2YWx1ZSBhbmQgaWYgaXQncyBhcyBlYXN5IGFzIGl0IGNvdWxkIGJlIHRv
IHdvcmsgd2l0aCBlcnJvcnMgb24gaXJxCj4+Pj4gbG9va3Vwcy4KPj4+Cj4+PiBJdCdkIGNlcnRh
aW5seSBiZSBnb29kIHRvIG5hbWUgYW55dGhpbmcgdGhhdCBkb2Vzbid0IGNvcnJlc3BvbmQgdG8g
b25lCj4+PiBvZiB0aGUgZXhpc3Rpbmcgc2VtYW50aWNzIGZvciB0aGUgQVBJICghKSBzb21ldGhp
bmcgZGlmZmVyZW50IHJhdGhlcgo+Pj4gdGhhbiBhZGRpbmcgeWV0IGFub3RoZXIgcG90ZW50aWFs
bHkgb3ZlcmxvYWRlZCBtZWFuaW5nLgo+Pgo+PiBJdCBzZWVtcyB3ZSdyZSAoYXQgbGVhc3QpIHRo
cmVlIHdobyBhZ3JlZSBhYm91dCB0aGlzLiBIZXJlIGlzIGEgcGF0Y2gKPj4gZml4aW5nIHRoZSBu
YW1lLgo+IAo+IEZyb20gYW4gQVBJIG5hbWluZyBwZXJzcGVjdGl2ZSB0aGlzIGRvZXMgbm90IG1h
a2UgbXVjaCBzZW5zZSBhbnltb3JlIHdpdGggdGhlIG5hbWUgY2hvc2VuLAo+IGl0IGlzIHVuZGVy
c3Rvb2QgdGhhdCB3aGVudCBoZSBmdW5jdGlvbiBpcyBjYWxsZWQgcGxhdGZvcm1fZ2V0X2lycV9v
cHRpb25hbCgpLCBvcHRpb25hbCBhcHBsaWVzCj4gdG8gdGhlIElSUS4gQW4gb3B0aW9uYWwgSVJR
IGlzIHNvbWV0aGluZyBwZW9wbGUgY2FuIHJlYXNvbiBhYm91dCBiZWNhdXNlIGl0IG1ha2VzIHNl
bnNlLgoKICAgUmlnaHQhIDotKQoKPiBXaGF0IGlzIGEgYSAic2lsZW50IiBJUlEgaG93ZXZlcj8g
SXQgZG9lcyBub3QgYXBwbHkgdG8gdGhlIG9iamVjdCBpdCBpcyB0cnlpbmcgdG8gZmV0Y2ggdG8K
PiBhbnltb3JlLCBidXQgdG8gdGhlIG1lc3NhZ2UgdGhhdCBtYXkgbm90IGJlIHByaW50ZWQgaW4g
Y2FzZSB0aGUgcmVzb3VyY2UgZmFpbGVkIHRvIGJlIG9idGFpbmVkLAo+IGJlY2F1c2Ugc2FpZCBy
ZXNvdXJjZSBpcyBvcHRpb25hbC4gV29haCwgdGhhdCdzIHF1aXRlIGEgc3RyZXRjaC4KCiAgIFJp
Z2h0IGFnYWluISA6LSkKCj4gRm9sbG93aW5nIHRoZSBkaXNjdXNzaW9uIGFuZCBvcmlnaW5hbCAy
IHBhdGNoZXMgc2V0IGZyb20gU2VyZ2V5LCBpdCBpcyBub3QgZW50aXJlbHkgY2xlYXIgdG8gbWUK
PiBhbnltb3JlIHdoYXQgaXMgaXQgdGhhdCB3ZSBhcmUgdHJ5aW5nIHRvIGZpeC4KCiAgIEFuZHkg
YW5kIG1lIHRyaWVkIHRvIGZpeCB0aGUgcGxhdGZvcm1fZ2V0X2lycVtfYnluYW1lXV9vcHRpb25h
bCgpIHZhbHVlLCBjb3JyZXNwb25kaW5nIHRvCmEgbWlzc2luZyAob3B0aW9uYWwpIElSUSByZXNv
dXJjZSBmcm9tIC1FTlhJTyB0byAwLCBpbiBvcmRlciB0byBrZWVwIHRoZSBjYWxsZXJzIGVycm9y
IGNvZGUKYWdub3N0aWMuIFRoaXMgY2hhbmdlIGNvbXBsZXRlbHkgYWxpZ25zIGUuZy4gcGxhdGZv
cm1fZ2V0X2lycV9vcHRpb25hbCgpIHdpdGggY2xrX2dldF9vcHRpb25hbCgpCmFuZCBncGlvZF9n
ZXRfb3B0aW9uYWwoKS4uLgogICBVbmZvcnVuYXRlbHksIHdlIGNhbid0ICJmaXgiIHJlcXVlc3Rf
aXJxKCkgYW5kIGNvbXBhbnkgdG8gdHJlYXQgMCBhcyBtaXNzaW5nIElSUSAtLSB0aGV5IGhhdmUK
dG8ga2VlcCB0aGUgYWJpbGl0eSB0byBnZXQgY2FsbGVkIGZyb20gdGhlIGFyY2gvIGNvZGUgKHRo
YXQgZG9lc24ndCB1c2UgcGxhdGZvcm1fZ2V0X2lycSgpLCBldGMuCgo+IEkgbmVhcmx5IGZvcmdv
dCwgSSB3b3VsZCBwYWludCBpdCBibHVlLCBza3kgYmx1ZSwgbm90IG5hdnkgYmx1ZSwgbm90IGxp
Z2h0IGJsdWUgOykKCiAgIDotKQoKUFM6IEZsb3JpYW4sIHNvbWV0aGluZyB3YXMgd3Jvbmcgd2l0
aCB5b3VyIG1haWwgY2xpZW50IC0tIEkgaGFkIHRvIG1hbnVhbGx5IHdyYXAgeW91ciBxdW90ZXMs
CmVsc2UgdGhlcmUgd2VyZSBzdXBlciBsb25nIHVuYnJva2VuIHBhcmFncmFwaHMuLi4KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpPcGVuaXBtaS1kZXZl
bG9wZXIgbWFpbGluZyBsaXN0Ck9wZW5pcG1pLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5u
ZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vb3BlbmlwbWkt
ZGV2ZWxvcGVyCg==
