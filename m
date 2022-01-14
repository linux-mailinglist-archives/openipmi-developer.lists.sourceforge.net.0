Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA2948E9DB
	for <lists+openipmi-developer@lfdr.de>; Fri, 14 Jan 2022 13:30:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n8Lif-0002Vb-Q1; Fri, 14 Jan 2022 12:30:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <geert.uytterhoeven@gmail.com>) id 1n8JML-0000fD-Nb
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 09:59:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=LMpobQFf1iaA0D70o2w2ggZn7pjngkhXQg858+CLGTw=; b=ex4sjXagNM4hRtNHm8IIVVmKRS
 XXDFm3WQrJSbsyJgVvESrBfBhnZUFY8uRTy56h6UXq9Rm8/Kx7Hx+5sdVGggWG6MXH/NDxjTAjoEx
 KpEKXQc71D3R34foAsk87r3RkXhObECTVOBeSg+emSCKR1Fa9+yoiDl9f8b/kBi1qHM4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=LMpobQFf1iaA0D70o2w2ggZn7pjngkhXQg858+CLGTw=; b=e8O3v3OLxJI8jfTe/A0c57Qezr
 qHuz5GzZowMH2Gcvi67UKv4hw2FjEWe7GoWXrYQROc+gKsizFMWYiI9RrNN0irfzId7hzWAGlYXtz
 Gir4YLrPJDGWeT5gfDs4r8fajKkLoDTFcqKdajUcBRSljrVGRrr+d/wiu09Kc6nybft8=;
Received: from mail-qk1-f169.google.com ([209.85.222.169])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n8JMe-00FRUs-4c
 for openipmi-developer@lists.sourceforge.net; Fri, 14 Jan 2022 09:59:20 +0000
Received: by mail-qk1-f169.google.com with SMTP id h12so2896356qkk.12
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jan 2022 01:59:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=LMpobQFf1iaA0D70o2w2ggZn7pjngkhXQg858+CLGTw=;
 b=q6gXh7LzzHrSb1pMG5Ar/AfBj4yMbO8PNa+qO6Q8TgquPzCKBX/zSK0FBf+W4ZHjVp
 EKFc59pRMP3j2Q3afg2OJZdjRQg+Tan/Z6iuNtD7SvNcncyFkvuM4ngOJUUOp2mTcl7t
 dJUIvi8y4dE3Ql3WGCMKGkmVfYhzDA6hSJom3htsrKI+jjpir2oPWtbBJ5H8bzbQWy22
 p+WwrnN5BA0EDq3mshE4iWDCRHzWCzk0aW3zArmowJC4nA6f73gjKyWXNhObV7bkuxeK
 gJ0cQjLtgKkXEOLgBld6h2I/Tnc4NmYiviHL7WceQUxSbAPlxT11O7Ri2ZxRu/muri2K
 XXvQ==
X-Gm-Message-State: AOAM530ofCPXytlqIMcqbDWusTsVq0MKwGb6gkb5fVHu/USE4Hip95TU
 bLrXRdYn83dgVRe1fLZaJzEV1khkd5ztL2dm
X-Google-Smtp-Source: ABdhPJyWr9lkAAJGB7UpqFzR953NHzAEImwVy/QAhBLEbbvxHB0ny2ffpvvq1dWyMmy8XUaAA+qrMw==
X-Received: by 2002:a05:620a:400e:: with SMTP id
 h14mr5918893qko.644.1642154354213; 
 Fri, 14 Jan 2022 01:59:14 -0800 (PST)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com.
 [209.85.219.53])
 by smtp.gmail.com with ESMTPSA id bl28sm3362624qkb.17.2022.01.14.01.59.13
 for <openipmi-developer@lists.sourceforge.net>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 14 Jan 2022 01:59:13 -0800 (PST)
Received: by mail-qv1-f53.google.com with SMTP id t7so9663284qvj.0
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 14 Jan 2022 01:59:13 -0800 (PST)
X-Received: by 2002:a67:e905:: with SMTP id c5mr3767888vso.68.1642154342466;
 Fri, 14 Jan 2022 01:59:02 -0800 (PST)
MIME-Version: 1.0
References: <CAMuHMdWK3RKVXRzMASN4HaYfLckdS7rBvSopafq+iPADtGEUzA@mail.gmail.com>
 <20220112085009.dbasceh3obfok5dc@pengutronix.de>
 <CAMuHMdWsMGPiQaPS0-PJ_+Mc5VQ37YdLfbHr_aS40kB+SfW-aw@mail.gmail.com>
 <20220112213121.5ruae5mxwj6t3qiy@pengutronix.de>
 <Yd9L9SZ+g13iyKab@sirena.org.uk>
 <20220113110831.wvwbm75hbfysbn2d@pengutronix.de>
 <YeA7CjOyJFkpuhz/@sirena.org.uk>
 <20220113194358.xnnbhsoyetihterb@pengutronix.de>
 <YeCI47ltlWzjzjYy@sirena.org.uk>
 <1df04d74-8aa2-11f1-54e9-34d0e8f4e58b@omp.ru>
 <20220113224319.akljsjtu7ps75vun@pengutronix.de>
In-Reply-To: <20220113224319.akljsjtu7ps75vun@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 14 Jan 2022 10:58:51 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWjo36UGde3g5ysdXpLJn=mrPp31SDODuQNPUqoc-ARrQ@mail.gmail.com>
Message-ID: <CAMuHMdWjo36UGde3g5ysdXpLJn=mrPp31SDODuQNPUqoc-ARrQ@mail.gmail.com>
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Uwe, On Thu, Jan 13, 2022 at 11:43 PM Uwe Kleine-König
    <u.kleine-koenig@pengutronix.de> wrote: > On Thu, Jan 13, 2022 at 11:57:43PM
    +0300, Sergey Shtylyov wrote: > > On 1/13/22 11:17 PM, Mark Brown wrote:
   [...] 
 
 Content analysis details:   (0.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.222.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.222.169 listed in wl.mailspike.net]
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
X-Headers-End: 1n8JMe-00FRUs-4c
X-Mailman-Approved-At: Fri, 14 Jan 2022 12:30:10 +0000
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

SGkgVXdlLAoKT24gVGh1LCBKYW4gMTMsIDIwMjIgYXQgMTE6NDMgUE0gVXdlIEtsZWluZS1Lw7Zu
aWcKPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4gd3JvdGU6Cj4gT24gVGh1LCBKYW4g
MTMsIDIwMjIgYXQgMTE6NTc6NDNQTSArMDMwMCwgU2VyZ2V5IFNodHlseW92IHdyb3RlOgo+ID4g
T24gMS8xMy8yMiAxMToxNyBQTSwgTWFyayBCcm93biB3cm90ZToKPiA+ID4+IFRoZSBzdWJzeXN0
ZW1zIHJlZ3VsYXRvciwgY2xrIGFuZCBncGlvIGhhdmUgdGhlIGNvbmNlcHQgb2YgYSBkdW1teQo+
ID4gPj4gcmVzb3VyY2UuIEZvciByZWd1bGF0b3IsIGNsayBhbmQgZ3BpbyB0aGVyZSBpcyBhIHNl
bWFudGljIGRpZmZlcmVuY2UKPiA+ID4+IGJldHdlZW4gdGhlIHJlZ3VsYXIgX2dldCgpIGZ1bmN0
aW9uIGFuZCB0aGUgX2dldF9vcHRpb25hbCgpIHZhcmlhbnQuCj4gPiA+PiAoT25lIG1pZ2h0IHJl
dHVybiB0aGUgZHVtbXkgcmVzb3VyY2UsIHRoZSBvdGhlciB3b24ndC4gVW5mb3J0dW5hdGVseQo+
ID4gPj4gd2hpY2ggb25lIGltcGxlbWVudHMgd2hpY2ggaXNuJ3QgdGhlIHNhbWUgZm9yIHRoZXNl
IHRocmVlLikgVGhlCj4gPiA+PiBkaWZmZXJlbmNlIGJldHdlZW4gcGxhdGZvcm1fZ2V0X2lycSgp
IGFuZCBwbGF0Zm9ybV9nZXRfaXJxX29wdGlvbmFsKCkgaXMKPiA+ID4+IG9ubHkgdGhhdCB0aGUg
Zm9ybWVyIG1pZ2h0IGVtaXQgYW4gZXJyb3IgbWVzc2FnZSBhbmQgdGhlIGxhdGVyIHdvbid0Lgo+
ID4KPiA+ICAgIFRoaXMgaXMgb25seSBhIGN1cnJlbnQgZGlmZmVyZW5jZSBidXQgSSdtIHN0aWxs
IGdvaW5nIHRvIHJldHVybiAwIElTTwo+ID4gLUVOWElPIGZyb20gbGF0Zm9ybV9nZXRfaXJxX29w
dGlvbmFsKCksIG5vIHdheSBJJ2QgbGVhdmUgdGhhdCAtRU5YSU8gdGhlcmUKPiA+IGFsb25lLi4u
IDotKQo+Cj4gVGhpcyB3b3VsZCBhZGRyZXNzIGEgYml0IG9mIHRoZSBjcml0aWMgaW4gbXkgY29t
bWl0IGxvZy4gQnV0IGFzIDAgaXNuJ3QKPiBhIGR1bW15IHZhbHVlIGxpa2UgdGhlIGR1bW15IHZh
bHVlcyB0aGF0IGV4aXN0IGZvciBjbGssIGdwaW9kIGFuZAo+IHJlZ3VsYXRvciBJIHN0aWxsIHRo
aW5rIHRoYXQgdGhlIG5hbWluZyBpcyBhIGJhZCBpZGVhIGJlY2F1c2UgaXQncyBub3QKPiBpbiB0
aGUgc3Bpcml0IG9mIHRoZSBvdGhlciAqX2dldF9vcHRpb25hbCBmdW5jdGlvbnMuCj4KPiBTZWVp
bmcgeW91IHNheSB0aGF0IC1FTlhJTyBpcyBhIGJhZCByZXR1cm4gdmFsdWUgZm9yCj4gcGxhdGZv
cm1fZ2V0X2lycV9vcHRpb25hbCgpIGFuZCAwIHNob3VsZCBiZSB1c2VkIGluc3RlYWQsIEkgd29u
ZGVyIHdoeQo+IG5vdCBjaGFuZ2luZyBwbGF0Zm9ybV9nZXRfaXJxKCkgdG8gcmV0dXJuIDAgaW5z
dGVhZCBvZiAtRU5YSU8sIHRvby4KPiBUaGlzIHF1ZXN0aW9uIGlzIGZvciBub3cgb25seSBhYm91
dCBhIHNlbnNpYmxlIHNlbWFudGljLiBUaGF0IGFjdHVhbGx5Cj4gY2hhbmdpbmcgcGxhdGZvcm1f
Z2V0X2lycSgpIGlzIHByb2JhYmx5IGhhcmRlciB0aGFuIGNoYW5naW5nCj4gcGxhdGZvcm1fZ2V0
X2lycV9vcHRpb25hbCgpIGlzIGEgZGlmZmVyZW50IHN0b3J5Lgo+Cj4gSWYgb25seSBwbGF0Zm9y
bV9nZXRfaXJxX29wdGlvbmFsKCkgaXMgY2hhbmdlZCBhbmQgZ2l2ZW4gdGhhdCB0aGUKPiBjYWxs
ZXJzIGhhdmUgdG8gZG8gc29tZXRoaW5nIGxpa2U6Cj4KPiAgICAgICAgIGlmICh0aGlzX2lycV9l
eGlzdHMoKSk6Cj4gICAgICAgICAgICAgICAgIC4uLiAoZS5nLiByZXF1ZXN0X2lycSkKPiAgICAg
ICAgIGVsc2U6Cj4gICAgICAgICAgICAgICAgIC4uLiAoZS5nLiBzZXR1cCBwb2xsaW5nKQo+Cj4g
SSByZWFsbHkgdGhpbmsgaXQncyBhIGJhZCBpZGVhIHRoYXQgdGhpc19pcnFfZXhpc3RzKCkgaGFz
IHRvIGJlCj4gZGlmZmVyZW50IGZvciBwbGF0Zm9ybV9nZXRfaXJxKCkgdnMuIHBsYXRmb3JtX2dl
dF9pcnFfb3B0aW9uYWwoKS4KCkZvciBwbGF0Zm9ybV9nZXRfaXJxKCksIHRoZSBJUlEgYmVpbmcg
YWJzZW50IGlzIGFuIGVycm9yIGNvbmRpdGlvbiwKaGVuY2UgaXQgc2hvdWxkIHJldHVybiBhbiBl
cnJvciBjb2RlLgpGb3IgcGxhdGZvcm1fZ2V0X2lycV9vcHRpb25hbCgpLCB0aGUgSVJRIGJlaW5n
IGFic2VudCBpcyBub3QgYW4gZXJyb3IKY29uZGl0aW9uLCBoZW5jZSBpdCBzaG91bGQgbm90IHJl
dHVybiBhbiBlcnJvciBjb2RlLCBhbmQgMCBpcyBPSy4KCkdye29ldGplLGVldGluZ31zLAoKICAg
ICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVy
ZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCklu
IHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlz
ZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qg
c2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KT3BlbmlwbWktZGV2ZWxvcGVyIG1haWxpbmcgbGlz
dApPcGVuaXBtaS1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMu
c291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL29wZW5pcG1pLWRldmVsb3Blcgo=
