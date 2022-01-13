Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9158448E1D0
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 01:55:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8AsV-0000Fk-Ay; Fri, 14 Jan 2022 00:55:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <f.fainelli@gmail.com>) id 1n87sG-00047A-89
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 21:43:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=chMleOaZP5LLYybKEvqzaEnOntGIKeyxzv8RxEMS/pU=; b=XH0M04fI8uK16s7qU588990fep
 i8XnNWn/iq/4YvW84YecxlaC1Dx8rzJr2NDO8TTcvzd3FM+FyGo62YEnMgFw/R1cnkWGF6bm1YF5S
 Q3Vqh4ONuQRCo24dsj696v7wozRpDFPhlouQeqgp4nV5Js2VmhAeZ+5wF+nC6H1VWb6c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=chMleOaZP5LLYybKEvqzaEnOntGIKeyxzv8RxEMS/pU=; b=bXRRjZ2eyc0hhpTEjHLvbwSq2r
 16Jy7CXMqILmAEEJge3UDOgzV62k7l2YrnBJ4mNCnAQUicJd/9Q4YO4jMhHEtChJe1VihwhA35Jm5
 iXpLI1IMu3pBlBHPN3GOwvDDJQypnKMmYxt+ewFalC/maK5WOSmEc/SAXn9DM/yj6SnI=;
Received: from mail-pj1-f43.google.com ([209.85.216.43])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n87sC-00Eswy-RN
 for openipmi-developer@lists.sourceforge.net; Thu, 13 Jan 2022 21:43:12 +0000
Received: by mail-pj1-f43.google.com with SMTP id
 y16-20020a17090a6c9000b001b13ffaa625so20164600pjj.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 13 Jan 2022 13:43:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=chMleOaZP5LLYybKEvqzaEnOntGIKeyxzv8RxEMS/pU=;
 b=oOc3d8quuL+d364W7KNWQtMdgtUPWTOWcsp8cMWNvHDxrhgRW2/iqLsZTnFsASrpLY
 68f6X/M1x+sO4IK/5z8GRukqDLM7CHf4rk2qB/zOlWi9G1eAn8tq+zp6RKqI0IPYCVAa
 hUGAgdHmZB/tYYdmRvOmZ4JNl+7KaTpFtgGI83AIVn9odjlTyVtSNxGjna9I3MmeJxnP
 LOezyDSKBJbwulklkuNOKWH9DWBVEMZVRl505lf6yiD2x6vDvZWbGecOdmYT0deqt9nE
 7oj6Lo5rPX0mYmnixNE6GUUU70z4K2CwYIE2HI3Z8c69J6dTeJP+r1nvFkXQlYsjlWb9
 Puog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=chMleOaZP5LLYybKEvqzaEnOntGIKeyxzv8RxEMS/pU=;
 b=ETMPtDERgsw0pHJvBKQCRFQpR/SwieHXq9M4ajvfAJcjzlR6zfOHtgYcn91imG5v4o
 S+qvGQohjtekcLtXDciYY5rBAB0hLHO9XOCCb//x8JsUedMPj5WEmqCsbT2ZFA/j3u8I
 Uk74bEuSTl7uAK43hgn5mmgQBX3zntYqnvjlnxqFmqfyK01SJvuE6Uo5mVJa9YQgZ1Mm
 xqlaj2YrWoM/HQ+4ZoutaNFpBW5BoZw2sy6ujsyhhi8Pkg4ukhSBKsA5OD8GX42jjoPI
 BJlp6X/JIH49Re0Tx2cxtU6NH3VnpoHD1IudQZzLHZYDGroEjmszETYVlTNRzLkJ/+y8
 UPdg==
X-Gm-Message-State: AOAM530C+c6vSdQqDpi/JqThJZCARvgtpSIhxgXoVM83MUe/TitpPxJi
 Nx0rKkOF4HHKX7U7qG4oSd4=
X-Google-Smtp-Source: ABdhPJza7nTyxaYu7zMa+CS3ya6yZ7jUqwYQkOFFet8Qv/maBjKZ7v19D4TMGEeuYYibqr5z1N9W+A==
X-Received: by 2002:a17:902:e790:b0:149:7a3f:826a with SMTP id
 cp16-20020a170902e79000b001497a3f826amr6595655plb.76.1642110183142; 
 Thu, 13 Jan 2022 13:43:03 -0800 (PST)
Received: from ?IPV6:2600:8802:b00:4a48:c1d3:c1c0:b78e:9e36?
 ([2600:8802:b00:4a48:c1d3:c1c0:b78e:9e36])
 by smtp.gmail.com with ESMTPSA id r26sm2983811pgu.65.2022.01.13.13.42.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 13 Jan 2022 13:43:02 -0800 (PST)
Message-ID: <745c601f-c782-0904-f786-c9bfced8f11c@gmail.com>
Date: Thu, 13 Jan 2022 13:42:57 -0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Content-Language: en-US
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Brown <broonie@kernel.org>
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
From: Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20220113194358.xnnbhsoyetihterb@pengutronix.de>
X-Spam-Score: -2.2 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 1/13/2022 11:43 AM, Uwe Kleine-König wrote: > The subsystems
    regulator, clk and gpio have the concept of a dummy > resource. For regulator,
    clk and gpio there is a semantic difference > between th [...] 
 
 Content analysis details:   (-2.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.216.43 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [f.fainelli[at]gmail.com]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.216.43 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1n87sC-00Eswy-RN
X-Mailman-Approved-At: Fri, 14 Jan 2022 00:55:37 +0000
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
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>, platform-driver-x86@vger.kernel.org,
 Linux PWM List <linux-pwm@vger.kernel.org>,
 Saravanan Sekar <sravanhome@gmail.com>, Corey Minyard <minyard@acm.org>,
 Linux PM list <linux-pm@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, John Garry <john.garry@huawei.com>,
 Takashi Iwai <tiwai@suse.com>, Peter Korsgaard <peter@korsgaard.com>,
 William Breathitt Gray <vilhelm.gray@gmail.com>,
 Mark Gross <markgross@kernel.org>, Hans de Goede <hdegoede@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Sergey Shtylyov <s.shtylyov@omp.ru>, Borislav Petkov <bp@alien8.de>,
 Jakub Kicinski <kuba@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
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
 =?UTF-8?Q?Niklas_S=c3=b6derlund?= <niklas.soderlund@ragnatech.se>,
 linux-mediatek@lists.infradead.org, Brian Norris <computersforpeace@gmail.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

CgpPbiAxLzEzLzIwMjIgMTE6NDMgQU0sIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+IFRoZSBz
dWJzeXN0ZW1zIHJlZ3VsYXRvciwgY2xrIGFuZCBncGlvIGhhdmUgdGhlIGNvbmNlcHQgb2YgYSBk
dW1teQo+IHJlc291cmNlLiBGb3IgcmVndWxhdG9yLCBjbGsgYW5kIGdwaW8gdGhlcmUgaXMgYSBz
ZW1hbnRpYyBkaWZmZXJlbmNlCj4gYmV0d2VlbiB0aGUgcmVndWxhciBfZ2V0KCkgZnVuY3Rpb24g
YW5kIHRoZSBfZ2V0X29wdGlvbmFsKCkgdmFyaWFudC4KPiAoT25lIG1pZ2h0IHJldHVybiB0aGUg
ZHVtbXkgcmVzb3VyY2UsIHRoZSBvdGhlciB3b24ndC4gVW5mb3J0dW5hdGVseQo+IHdoaWNoIG9u
ZSBpbXBsZW1lbnRzIHdoaWNoIGlzbid0IHRoZSBzYW1lIGZvciB0aGVzZSB0aHJlZS4pIFRoZQo+
IGRpZmZlcmVuY2UgYmV0d2VlbiBwbGF0Zm9ybV9nZXRfaXJxKCkgYW5kIHBsYXRmb3JtX2dldF9p
cnFfb3B0aW9uYWwoKSBpcwo+IG9ubHkgdGhhdCB0aGUgZm9ybWVyIG1pZ2h0IGVtaXQgYW4gZXJy
b3IgbWVzc2FnZSBhbmQgdGhlIGxhdGVyIHdvbid0Lgo+IAo+IFRvIHByZXZlbnQgcGVvcGxlJ3Mg
ZXhwZWN0YXRpb25zIHRoYXQgdGhlcmUgaXMgYSBzZW1hbnRpYyBkaWZmZXJlbmNlCj4gYmV0d2Vl
biB0aGVzZSB0b28sIHJlbmFtZSBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgdG8KPiBwbGF0
Zm9ybV9nZXRfaXJxX3NpbGVudCgpIHRvIG1ha2UgdGhlIGFjdHVhbCBkaWZmZXJlbmNlIG1vcmUg
b2J2aW91cy4KPiAKPiBUaGUgI2RlZmluZSBmb3IgdGhlIG9sZCBuYW1lIGNhbiBhbmQgc2hvdWxk
IGJlIHJlbW92ZWQgb25jZSBhbGwgcGF0Y2hlcwo+IGN1cnJlbnRseSBpbiBmbHV4IHN0aWxsIHJl
bHlpbmcgb24gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIGFyZQo+IGZpeGVkLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9u
aXguZGU+Cj4gLS0tCj4gSGVsbG8sCj4gCj4gT24gVGh1LCBKYW4gMTMsIDIwMjIgYXQgMDI6NDU6
MzBQTSArMDAwMCwgTWFyayBCcm93biB3cm90ZToKPj4gT24gVGh1LCBKYW4gMTMsIDIwMjIgYXQg
MTI6MDg6MzFQTSArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4+Cj4+PiBUaGlzIGlz
IGFsbCB2ZXJ5IHVuZm9ydHVuYXRlLiBJbiBteSBleWVzIGIpIGlzIHRoZSBtb3N0IHNlbnNpYmxl
Cj4+PiBzZW5zZSwgYnV0IHRoZSBwYXN0IHNob3dlZCB0aGF0IHdlIGRvbid0IGFncmVlIGhlcmUu
IChUaGUgbW9zdCBhbm5veWluZwo+Pj4gcGFydCBvZiByZWd1bGF0b3JfZ2V0IGlzIHRoZSB3YXJu
aW5nIHRoYXQgaXMgZW1pdHRlZCB0aGF0IHJlZ3VsYXJpbHkKPj4+IG1ha2VzIGN1c3RvbWVycyBh
c2sgd2hhdCBoYXBwZW5zIGhlcmUgYW5kIGlmIHRoaXMgaXMgZml4YWJsZS4pCj4+Cj4+IEZvcnR1
bmF0ZWx5IGl0IGNhbiBiZSBmaXhlZCwgYW5kIGl0J3Mgc2FmZXIgdG8gY2xlYXJseSBzcGVjaWZ5
IHRoaW5ncy4KPj4gVGhlIHByaW50cyBhcmUgdGhlcmUgYmVjYXVzZSB3aGVuIHRoZSBkZXNjcmlw
dGlvbiBpcyB3cm9uZyBlbm91Z2ggdG8KPj4gY2F1c2UgdGhpbmdzIHRvIGJsb3cgdXAgd2UgY2Fu
IGZhaWwgdG8gYm9vdCBvciBydW4gbWVzc2lseSBhbmQKPj4gZm9yZ2V0dGluZyB0byBkZXNjcmli
ZSBzb21lIHN1cHBsaWVzIChvciB0eXBvaW5nIHNvIHRoZXkgaGF2ZW4ndCBkb25lCj4+IHRoYXQp
IGFuZCBwZW9wbGUgd2VyZSBoYXZpbmcgYSBoYXJkIHRpbWUgZmlndXJpbmcgb3V0IHdoYXQgbWln
aHQndmUKPj4gaGFwcGVuZWQuCj4gCj4gWWVzLCB0aGF0J3MgcmlnaHQuIEkgc2VudCBhIHBhdGNo
IGZvciBzdWNoIGEgd2FybmluZyBpbiAyMDE5IGFuZCBwaW5nZWQKPiBvY2NhdGlvbmFsbHkuIFN0
aWxsIHdhaXRpbmcgZm9yIGl0IHRvIGJlIG1lcmdlZCA6LVwKPiAoaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvci8yMDE5MDYyNTEwMDQxMi4xMTgxNS0xLXUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25p
eC5kZSkKPiAKPj4+IEkgdGhpbmsgYXQgbGVhc3QgYykgaXMgZWFzeSB0byByZXNvbHZlIGJlY2F1
c2UKPj4+IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSBpc24ndCB0aGF0IG9sZCB5ZXQgYW5k
IG1lY2hhbmljYWxseQo+Pj4gcmVwbGFjaW5nIGl0IGJ5IHBsYXRmb3JtX2dldF9pcnFfc2lsZW50
KCkgc2hvdWxkIGJlIGVhc3kgYW5kIHNhZmUuCj4+PiBBbmQgdGhpcyBpcyBvcnRob2dvbmFsIHRv
IHRoZSBkaXNjdXNzaW9uIGlmIC1FTk9YSU8gaXMgYSBzZW5zaWJsZSByZXR1cm4KPj4+IHZhbHVl
IGFuZCBpZiBpdCdzIGFzIGVhc3kgYXMgaXQgY291bGQgYmUgdG8gd29yayB3aXRoIGVycm9ycyBv
biBpcnEKPj4+IGxvb2t1cHMuCj4+Cj4+IEl0J2QgY2VydGFpbmx5IGJlIGdvb2QgdG8gbmFtZSBh
bnl0aGluZyB0aGF0IGRvZXNuJ3QgY29ycmVzcG9uZCB0byBvbmUKPj4gb2YgdGhlIGV4aXN0aW5n
IHNlbWFudGljcyBmb3IgdGhlIEFQSSAoISkgc29tZXRoaW5nIGRpZmZlcmVudCByYXRoZXIKPj4g
dGhhbiBhZGRpbmcgeWV0IGFub3RoZXIgcG90ZW50aWFsbHkgb3ZlcmxvYWRlZCBtZWFuaW5nLgo+
IAo+IEl0IHNlZW1zIHdlJ3JlIChhdCBsZWFzdCkgdGhyZWUgd2hvIGFncmVlIGFib3V0IHRoaXMu
IEhlcmUgaXMgYSBwYXRjaAo+IGZpeGluZyB0aGUgbmFtZS4KCiBGcm9tIGFuIEFQSSBuYW1pbmcg
cGVyc3BlY3RpdmUgdGhpcyBkb2VzIG5vdCBtYWtlIG11Y2ggc2Vuc2UgYW55bW9yZSAKd2l0aCB0
aGUgbmFtZSBjaG9zZW4sIGl0IGlzIHVuZGVyc3Rvb2QgdGhhdCB3aGVudCBoZSBmdW5jdGlvbiBp
cyBjYWxsZWQgCnBsYXRmb3JtX2dldF9pcnFfb3B0aW9uYWwoKSwgb3B0aW9uYWwgYXBwbGllcyB0
byB0aGUgSVJRLiBBbiBvcHRpb25hbCAKSVJRIGlzIHNvbWV0aGluZyBwZW9wbGUgY2FuIHJlYXNv
biBhYm91dCBiZWNhdXNlIGl0IG1ha2VzIHNlbnNlLgoKV2hhdCBpcyBhIGEgInNpbGVudCIgSVJR
IGhvd2V2ZXI/IEl0IGRvZXMgbm90IGFwcGx5IHRvIHRoZSBvYmplY3QgaXQgaXMgCnRyeWluZyB0
byBmZXRjaCB0byBhbnltb3JlLCBidXQgdG8gdGhlIG1lc3NhZ2UgdGhhdCBtYXkgbm90IGJlIHBy
aW50ZWQgCmluIGNhc2UgdGhlIHJlc291cmNlIGZhaWxlZCB0byBiZSBvYnRhaW5lZCwgYmVjYXVz
ZSBzYWlkIHJlc291cmNlIGlzIApvcHRpb25hbC4gV29haCwgdGhhdCdzIHF1aXRlIGEgc3RyZXRj
aC4KCkZvbGxvd2luZyB0aGUgZGlzY3Vzc2lvbiBhbmQgb3JpZ2luYWwgMiBwYXRjaGVzIHNldCBm
cm9tIFNlcmdleSwgaXQgaXMgCm5vdCBlbnRpcmVseSBjbGVhciB0byBtZSBhbnltb3JlIHdoYXQg
aXMgaXQgdGhhdCB3ZSBhcmUgdHJ5aW5nIHRvIGZpeC4KCkkgbmVhcmx5IGZvcmdvdCwgSSB3b3Vs
ZCBwYWludCBpdCBibHVlLCBza3kgYmx1ZSwgbm90IG5hdnkgYmx1ZSwgbm90IApsaWdodCBibHVl
IDspCi0tIApGbG9yaWFuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xp
c3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
