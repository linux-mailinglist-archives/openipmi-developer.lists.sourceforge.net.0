Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C736F492671
	for <lists+openipmi-developer@lfdr.de>; Tue, 18 Jan 2022 14:05:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n9oBA-0001pj-Mc; Tue, 18 Jan 2022 13:05:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n9nvo-0001Az-5C
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 12:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iDNGF1VjVomGlE1aVlmhPbvwByegTECQGcsrxubfQG0=; b=YPlhBrlagI1UCmLRN74kbV/fJ+
 PrWwoATCqjAnLgIwe5RoCI5OqRB+jaxr4KvLUtGiWGwZHcS6elu6Ue3X5R7xfme68ZVfayhx+v0lV
 1O1ta+Btndjw8WrsQgMkVfoYI051iNPZzlCPGm5Yo6Dk9pfLAPJbhIQt1AkS/SjCBOcM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iDNGF1VjVomGlE1aVlmhPbvwByegTECQGcsrxubfQG0=; b=N1BDH+em1xYHyWxeNjaDTYvp8h
 5FeVwM6K5HQ1nQWwbVT8fAOSZ4e5/isNP94tX7VtD6G7JMfjW3gbzc7OHUQXfMvl+CtBlfuBctS2c
 7EFtUhBZk4fkYsp2w2okvjomiy7URJO6O9rWG7je0Y6CRyDkeGw7CxzcZAH/pMFtTS64=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n9nvl-0022dp-0x
 for openipmi-developer@lists.sourceforge.net; Tue, 18 Jan 2022 12:49:46 +0000
Received: by mail-pl1-f177.google.com with SMTP id c9so109403plg.11
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jan 2022 04:49:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iDNGF1VjVomGlE1aVlmhPbvwByegTECQGcsrxubfQG0=;
 b=3zBsiCNFYMkqPqwOeqmAlkd6GaERdwcVKmBvZdm2rrCXRu51Rnqh5U3+RUsgJqGHtL
 WnFm/uGiJluRVrmodtUBfWjyGvOAD+aEsOU9DLhBKx8/uj5xHOKO3kCiSuD8nDMRQwvd
 2DC+nd0zX17nF6TLGLJVnBNIyUAaVZmNFeMTAOJ/bcbgCekiUlw/omJAmJAanmlRvVmX
 /Sya/P440g9EAA91IItIUftFS4AktfjcUo7/zq+Vif1Mip2/qQgnS/Po7Xhh6Y+PrjKT
 VRUXJNnVM6zJaVFDPZA7XoOecvC8A0ZddF2INvG63Ejal1HQnJ03qFyPHwPbYaUedJvx
 pJQw==
X-Gm-Message-State: AOAM532bDs1Zdev8SJjySbHVDzU/ttPXs6QsYkY27jRRhR1/fByHc3+q
 vZrWipLz6CeDqXwQorE0DdDIz8AHLKSmjXEy
X-Google-Smtp-Source: ABdhPJwr+W1CcMuZCNqjc5EtT8DI5uZn0lbdZ00wgIK6eD1lnslErOdZuXIJkka9TF4J/v+BWMI+Sw==
X-Received: by 2002:a17:90b:10b:: with SMTP id
 p11mr171368pjz.230.1642510179252; 
 Tue, 18 Jan 2022 04:49:39 -0800 (PST)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com.
 [209.85.216.46])
 by smtp.gmail.com with ESMTPSA id o14sm3719226pfk.49.2022.01.18.04.49.38
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Jan 2022 04:49:38 -0800 (PST)
Received: by mail-pj1-f46.google.com with SMTP id
 w12-20020a17090a528c00b001b276aa3aabso2302982pjh.0
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 18 Jan 2022 04:49:38 -0800 (PST)
X-Received: by 2002:a05:6102:3581:: with SMTP id
 h1mr9266907vsu.5.1642510166831; 
 Tue, 18 Jan 2022 04:49:26 -0800 (PST)
MIME-Version: 1.0
References: <c9026f17-2b3f-ee94-0ea3-5630f981fbc1@omp.ru>
 <CAMuHMdXVbRudGs69f9ZzaP1PXhteDNZiXA658eMFAwP4nr9r3w@mail.gmail.com>
 <20220117092444.opoedfcf5k5u6otq@pengutronix.de>
 <CAMuHMdUgZUeraHadRAi2Z=DV+NuNBrKPkmAKsvFvir2MuquVoA@mail.gmail.com>
 <20220117114923.d5vajgitxneec7j7@pengutronix.de>
 <CAMuHMdWCKERO20R2iVHq8P=BaoauoBAtiampWzfMRYihi3Sb0g@mail.gmail.com>
 <20220117170609.yxaamvqdkivs56ju@pengutronix.de>
 <CAMuHMdXbuZqEpYivyS6hkaRN+CwTOGaHq_OROwVAWvDD6OXODQ@mail.gmail.com>
 <20220118090913.pjumkq4zf4iqtlha@pengutronix.de>
 <CAMuHMdUW8+Y_=uszD+JOZO3Lpa9oDayk+GO+cg276i2f2T285w@mail.gmail.com>
 <20220118120806.pbjsat4ulg3vnhsh@pengutronix.de>
In-Reply-To: <20220118120806.pbjsat4ulg3vnhsh@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Jan 2022 13:49:15 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWkwV9XE_R5FZ=jPtDwLpDbEngG6+X2JmiDJCZJZvUjYA@mail.gmail.com>
Message-ID: <CAMuHMdWkwV9XE_R5FZ=jPtDwLpDbEngG6+X2JmiDJCZJZvUjYA@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Tue, Jan 18, 2022 at 1:08 PM Uwe Kleine-König
   <u.kleine-koenig@pengutronix.de> wrote: > On Tue, Jan 18, 2022 at 10:37:25AM
    +0100, Geert Uytterhoeven wrote: > > On Tue, Jan 18, 2022 at 10:09 AM Uwe
    [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [geert.uytterhoeven[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.214.177 listed in list.dnswl.org]
  0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
                             [209.85.214.177 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1n9nvl-0022dp-0x
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
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
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
 Matthias Brugger <matthias.bgg@gmail.com>, Takashi Iwai <tiwai@suse.com>,
 platform-driver-x86@vger.kernel.org, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-edac@vger.kernel.org,
 Tony Luck <tony.luck@intel.com>, Mun Yew Tham <mun.yew.tham@intel.com>,
 Eric Auger <eric.auger@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
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

SGkgVXdlLAoKT24gVHVlLCBKYW4gMTgsIDIwMjIgYXQgMTowOCBQTSBVd2UgS2xlaW5lLUvDtm5p
Zwo8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBPbiBUdWUsIEphbiAx
OCwgMjAyMiBhdCAxMDozNzoyNUFNICswMTAwLCBHZWVydCBVeXR0ZXJob2V2ZW4gd3JvdGU6Cj4g
PiBPbiBUdWUsIEphbiAxOCwgMjAyMiBhdCAxMDowOSBBTSBVd2UgS2xlaW5lLUvDtm5pZwo+ID4g
PHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gPiA+IEZvciB0aGUgKGNs
a3xncGlvZHxyZWd1bGF0b3IpX2dldF9vcHRpb25hbCgpIHlvdSBkb24ndCBoYXZlIHRvIGNoZWNr
Cj4gPiA+IGFnYWluc3QgdGhlIG1hZ2ljIG5vdC1mb3VuZCB2YWx1ZSAoc28gbm8gaW1wbGVtZW50
YXRpb24gZGV0YWlsIG1hZ2ljCj4gPiA+IGxlYWtzIGludG8gdGhlIGNhbGxlciBjb2RlKSBhbmQg
anVzdCBwYXNzIGl0IHRvIHRoZSBuZXh0IEFQSSBmdW5jdGlvbi4KPiA+ID4gKEFuZCBteSBleHBl
Y3RhdGlvbiB3b3VsZCBiZSB0aGF0IGlmIHlvdSBjaG9zZSB0byByZXByZXNlbnQgbm90LWZvdW5k
IGJ5Cj4gPiA+ICh2b2lkICopNjYgaW5zdGVhZCBvZiBOVUxMLCB5b3Ugd29uJ3QgaGF2ZSB0byBh
ZGFwdCBhbnkgdXNlciwganVzdCB0aGUKPiA+ID4gZnJhbWV3b3JrIGludGVybmFsIGNoZWNrcy4g
VGhpcyBpcyBhIGdvb2QgdGhpbmchKQo+ID4KPiA+IEFoLCB0aGVyZSBpcyB0aGUgd3JvbmcgYXNz
dW1wdGlvbjogZHJpdmVycyBzb21ldGltZXMgZG8gbmVlZCB0byBrbm93Cj4gPiBpZiB0aGUgcmVz
b3VyY2Ugd2FzIGZvdW5kLCBhbmQgdGh1cyBkbyBuZWVkIHRvIGtub3cgYWJvdXQgKHZvaWQgKik2
NiwKPiA+IC1FTk9ERVYsIG9yIC1FTlhJTy4gIEkgYWxyZWFkeSBnYXZlIGV4YW1wbGVzIGZvciBJ
UlEgYW5kIGNsayBiZWZvcmUuCj4gPiBJIGNhbiBpbWFnaW5lIHRoZXNlIGV4aXN0IGZvciBncGlv
ZCBhbmQgcmVndWxhdG9yLCB0b28sIGFzIHNvb24gYXMKPiA+IHlvdSBnbyBiZXlvbmQgdGhlIHRy
aXZpYWwgImVuYWJsZSIgYW5kICJkaXNhYmxlIiB1c2UtY2FzZXMuCj4KPiBNeSBwcmVtaXNlIGlz
IHRoYXQgZXZlcnkgdXNlciB3aG8gaGFzIHRvIGNoZWNrIGZvciAibm90IGZvdW5kIgo+IGV4cGxp
Y2l0bHkgc2hvdWxkIG5vdCB1c2UgKGNsa3xncGlvZClfZ2V0X29wdGlvbmFsKCkgYnV0Cj4gKGNs
a3xncGlvZClfZ2V0KCkgYW5kIGRvIHByb3BlciAoYW5kIGV4cGxpY2l0KSBlcnJvciBoYW5kbGlu
ZyBmb3IKPiAtRU5PREVWLiAoY2xrfGdwaW9kKV9nZXRfb3B0aW9uYWwoKSBpcyBvbmx5IGZvciB0
aGVzZSB0cml2aWFsIHVzZS1jYXNlcy4KPgo+ID4gQW5kIDAvTlVMTCB2cy4gPiAwIGlzIHRoZSBu
YXR1cmFsIGNoZWNrIGhlcmU6IG1pc3NpbmcsIGJ1dCBub3QKPiA+IGFuIGVycm9yLgo+Cj4gRm9y
IG1lIGl0IGl0IDEwMCUgaXJyZWxldmFudCBpZiAibm90IGZvdW5kIiBpcyBhbiBlcnJvciBmb3Ig
dGhlIHF1ZXJ5Cj4gZnVuY3Rpb24gb3Igbm90LiBJIGp1c3QgaGF2ZSB0byBiZSBhYmxlIHRvIGNo
ZWNrIGZvciAibm90IGZvdW5kIiBhbmQKPiByZWFjdCBhY2NvcmRpbmdseS4KPgo+IEFuZCBhZGRp
bmcgYSBmdW5jdGlvbgo+Cj4gICAgICAgICBkZWYgcGxhdGZvcm1fZ2V0X2lycV9vcGlvbmFsKCk6
Cj4gICAgICAgICAgICAgICAgIHJldCA9IHBsYXRmb3JtX2dldF9pcnEoKQo+ICAgICAgICAgICAg
ICAgICBpZiByZXQgPT0gLUVOWElPOgo+ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiAw
Cj4gICAgICAgICAgICAgICAgIHJldHVybiByZXQKPgo+IGl0J3Mgbm90IGEgdXNlZnVsIGFkZGl0
aW9uIHRvIHRoZSBBUEkgaWYgSSBjYW5ub3QgdXNlIDAgYXMgYSBkdW1teQo+IGJlY2F1c2UgaXQg
ZG9lc24ndCBzaW1wbGlmeSB0aGUgY2FsbGVyIGVub3VnaCB0byBqdXN0aWZ5IHRoZSBhZGRpdGlv
bmFsCj4gZnVuY3Rpb24uCj4KPiBUaGUgb25seSB0aGluZyBJIG5lZWQgdG8gYmUgYWJsZSBpcyB0
byBkaXN0aW5ndWlzaCB0aGUgY2FzZXMgInRoZXJlIGlzCj4gYW4gaXJxIiwgInRoZXJlIGlzIG5v
IGlycSIgYW5kIGFueXRoaW5nIGVsc2UgaXMgInRoZXJlIGlzIGEgcHJvYmxlbSBJCj4gY2Fubm90
IGhhbmRsZSBhbmQgc28gZm9yd2FyZCBpdCB0byBteSBjYWxsZXIiLiBUaGUgc2VtYW50aWMgb2YK
PiBwbGF0Zm9ybV9nZXRfaXJxKCkgaXMgYWJsZSB0byBzYXRpc2Z5IHRoaXMgcmVxdWlyZW1lbnRb
MV0sIHNvIHdoeSBpbnRyb2R1Y2UKPiBwbGF0Zm9ybV9nZXRfaXJxX29waW9uYWwoKSBmb3IgdGhl
IHNtYWxsIGFkdmFudGFnZSB0aGF0IEkgY2FuIGNoZWNrIGZvcgo+IG5vdC1mb3VuZCB1c2luZwo+
Cj4gICAgICAgICBpZiAoIWlycSkKPgo+IGluc3RlYWQgb2YKPgo+ICAgICAgICAgaWYgKGlycSAh
PSAtRU5YSU8pCj4KPiA/IFRoZSBzZW1hbnRpYyBvZiBwbGF0Zm9ybV9nZXRfaXJxKCkgaXMgZWFz
aWVyICgiRWl0aGVyIGEgdXNhYmxlCj4gbm9uLW5lZ2F0aXZlIGlycSBudW1iZXIgb3IgYSBuZWdh
dGl2ZSBlcnJvciBudW1iZXIiKSBjb21wYXJlZCB0bwo+IHBsYXRmb3JtX2dldF9pcnFfb3B0aW9u
YWwoKSAoIkVpdGhlciBhIHVzYWJsZSBwb3NpdGl2ZSBpcnEgbnVtYmVyIG9yIGEKPiBuZWdhdGl2
ZSBlcnJvciBudW1iZXIgb3IgMCBtZWFuaW5nIG5vdCBmb3VuZCIpLiBVc2FnZSBvZgo+IHBsYXRm
b3JtX2dldF9pcnEoKSBpc24ndCBoYXJkZXIgb3IgbW9yZSBleHBlbnNpdmUgKG5laXRoZXIgZm9y
IGEgaHVtYW4KPiByZWFkZXIgbm9yIGZvciBhIG1hY2hpbmcgcnVubmluZyB0aGUgcmVzdWx0aW5n
IGNvbXBpbGVkIGNvZGUpLgo+IEZvciBhIGh1bWFuIHJlYWRlcgo+Cj4gICAgICAgICBpZiAoaXJx
ICE9IC1FTlhJTykKPgo+IGlzIGV2ZW4gZWFzaWVyIHRvIHVuZGVyc3RhbmQgYmVjYXVzZSBmb3IK
Pgo+ICAgICAgICAgaWYgKCFpcnEpCj4KPiB0aGV5IGhhdmUgdG8gY2hlY2sgd2hlcmUgdGhlIHZh
bHVlIGNvbWVzIGZyb20sIHNlZSBpdCdzCj4gcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpIGFu
ZCB1bmRlcnN0YW5kIHRoYXQgMCBtZWFucyBub3QtZm91bmQuCgoidklSUSB6ZXJvIGRvZXMgbm90
IGV4aXN0LiIKCj4gVGhpcyBmdW5jdGlvbiBqdXN0IGFkZHMgb3ZlcmhlYWQgYmVjYXVzZSBhcyBh
IGlycSBmcmFtZXdvcmsgdXNlciBJIGhhdmUKPiB0byB1bmRlcnN0YW5kIGFub3RoZXIgZnVuY3Rp
b24uIEZvciBtZSB0aGUgYWRkZWQgYmVuZWZpdCBpcyB0b28gc21hbGwgdG8KPiBqdXN0aWZ5IHRo
ZSBhZGRpdGlvbmFsIGZ1bmN0aW9uLiBBbmQgeW91IGJyZWFrIG91dC1vZi10cmVlIGRyaXZlcnMu
Cj4gVGhlc2UgYXJlIGFsbCBubyBtYWpvciBjb3VudGVyIGFyZ3VtZW50cywgYnV0IGFzIHRoZSBh
ZHZhbnRhZ2UgaXNuJ3QKPiBtYWpvciBlaXRoZXIsIHRoZXkgc3RpbGwgbWF0dGVyLgo+Cj4gQmVz
dCByZWdhcmRzCj4gVXdlCj4KPiBbMV0gdGhlIG9ubHkgYW5ub3lpbmcgdGhpbmcgaXMgdGhlIGVy
cm9yIG1lc3NhZ2UuCgpTbyB0aGVyZSdzIHN0aWxsIGEgbmVlZCBmb3IgdHdvIGZ1bmN0aW9ucy4K
Ckdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdl
ZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0g
Z2VlcnRAbGludXgtbTY4ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNo
bmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2lu
ZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlr
ZSB0aGF0LgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRz
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KT3Blbmlw
bWktZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29w
ZW5pcG1pLWRldmVsb3Blcgo=
